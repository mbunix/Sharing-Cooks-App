// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sharing_cooks/app_service.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/services/helpers.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_setup_data.dart';
import 'package:sharing_cooks/domain/value_objects/global_keys.dart';
import 'package:sharing_cooks/infrastructure/repository/database_base.dart';
import 'package:sharing_cooks/infrastructure/repository/database_state_persistor.dart';
import 'package:sharing_cooks/presentation/core/sharing_cooks_app.dart';
import 'package:sharing_cooks/presentation/core/widgets/unrecoverable_error_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart' as provider;

/// Responsible for putting together everything that the app needs in order
/// to run safely.
///
/// It is like a small preflight check
///
/// The following are initialized
///
/// - An initial Firebase instance
/// - The app state
/// - The navigator key used for navigation
/// - The sentry client for error logging
Future<void> initApp(AppContext appContexts) async {
  WidgetsFlutterBinding.ensureInitialized();

  late Store<AppState> store;

  await dotenv.load();

  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[DeviceOrientation.portraitUp],
  );

  final SharingCooksStateDatabase stateDB =
      SharingCooksStateDatabase(dataBaseName: DatabaseName);

  await stateDB.init();

  final AppState initialState = await stateDB.readState();

  /// initialize a fresh database if [initialState] is `null`,
  /// and populate the database with the default values for each state
  if (initialState == AppState.initial()) {
    await stateDB.saveInitialState(initialState);
  }
  store = Store<AppState>(
    initialState: initialState,
    persistor: PersistorPrinterDecorator<AppState>(stateDB),
    defaultDistinct: true,
  );

  NavigateAction.setNavigatorKey(appGlobalNavigatorKey);

  final AppSetupData appSetupData = getAppSetupData(AppContext.AppTest);

  /// Configures which error widget to show depending  on whether the app is
  /// in debug or release mode.
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(
      () {
        inDebug = true;
        return true;
      }(),
    );
    // In debug mode, use the normal error widget which shows
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show error image
    return const UnrecoverableErrorWidget();
  };
  await Supabase.initialize(
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpzZWViZGdscWlhcWR2aGxzZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzUzMDk0NzYsImV4cCI6MTk5MDg4NTQ3Nn0.gsQX2FwrCaHcvkKlrbWOOjxKFGAAcLc1kBKWOApOlHA',
    url: 'https://zseebdglqiaqdvhlsecv.supabase.co',
  );

  runZonedGuarded(
    () async {
      await SentryFlutter.init(
        (SentryFlutterOptions options) {
          options
            ..dsn = appSetupData.sentryDsn
            ..diagnosticLevel = SentryLevel.error;
        },
        appRunner: () => runApp(
          provider.MultiProvider(
            providers: <SingleChildWidget>[
              provider.ChangeNotifierProvider<AppService>(
                create: (_) => AppService(),
              )
            ],
            child: SHaringCooksApp(
              store: store,
              appSetupData: appSetupData,
              // TODO: Firebase analytics, stream chat flutter
              // streamClient: streamClient,
              // analyticsObserver: AnalyticsService().getAnalyticsObserver(),
            ),
          ),
        ),
      );

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        Sentry.captureException(details.exceptionAsString());
      };
    },
    (Object exception, StackTrace stackTrace) async {
      await Sentry.captureException(exception, stackTrace: stackTrace);
    },
  );
}
