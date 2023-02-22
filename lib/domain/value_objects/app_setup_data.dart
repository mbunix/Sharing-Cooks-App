import 'package:quiver/core.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sharing_cooks/application/services/base_context.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';

/// Holds an environment specific app configuration
///
/// Items included in this config:
/// - [appContexts] holds the environment in which the app is running on
/// - [sentryDsn] is the [Sentry] DSN key
/// - [streamAPIKey] is the GetStream API key for the environment
/// - [customContext] contains extra configs for the GraphQL client
/// - The [environment] is a string description of the environment the app is
/// running on. It is extracted from the [AppEnvironment] object
///
/// This is used to compose the [devAppSetupData], [demoAppSetupData] and
/// [prodAppSetupData] below
class AppSetupData {
  /// The context in which the app is running on. Can be either test or prod
  AppContext appContext;
  final String sentryDsn;
  final BaseContext? customContext;
  AppSetupData({
    required this.appContext,
    required this.sentryDsn,
    this.customContext,
  });

  @override
  bool operator ==(Object other) =>
      other is AppSetupData &&
      appContext == other.appContext &&
      other.sentryDsn == this.sentryDsn;

  @override
  int get hashCode => hash2(appContext, sentryDsn);
}

final AppSetupData devAppSetupData = AppSetupData(
  appContext: AppContext.AppTest,
  sentryDsn: dotenv.env['DEV_SENTRY_DNS'] ?? '',
  customContext: const BaseContext(
    loginEndpoint: '',
    registerEndpoint: '',
  ),
);
