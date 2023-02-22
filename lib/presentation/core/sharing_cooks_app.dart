import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/app_entry_point_view_model.dart';
import 'package:sharing_cooks/application/redux/view_models/app_entry_point_view_model_factory.dart';
import 'package:sharing_cooks/application/redux/view_models/initial_route_view_model.dart';
import 'package:sharing_cooks/application/services/custom_client.dart';
import 'package:sharing_cooks/domain/value_objects/app_setup_data.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/domain/value_objects/global_keys.dart';
import 'package:sharing_cooks/infrastructure/endpoints.dart';
import 'package:sharing_cooks/presentation/core/app_wrapper.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/router/app_router.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class SHaringCooksApp extends StatelessWidget {
  final Store<AppState> store;
  final AppSetupData appSetupData;
  const SHaringCooksApp({
    super.key,
    required this.store,
    required this.appSetupData,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      key: globalStoreProviderKey,
      store: store,
      child: StoreConnector<AppState, AppEntryPointViewModel>(
        vm: () => AppEntryPointViewModelFactory(),
        builder: (BuildContext context, AppEntryPointViewModel vm) {
          final String idToken = vm.idToken ?? '';
          final String userID = vm.userId ?? '';

          return StoreConnector<AppState, InitialRouteViewModel>(
            converter: (Store<AppState> store) =>
                InitialRouteViewModel.fromStore(store.state),
            builder: (BuildContext context, InitialRouteViewModel vm) {
              final String initialRoute = (vm.isSignedIn ?? false)
                  ? AppRoutes.homePage
                  : vm.initialRoute ?? AppRoutes.onboardingPage;

              return AppWrapper(
                appContext: appSetupData.appContext,
                baseContext: appSetupData.customContext,
                graphQLClient: CustomClient(
                  idToken,
                  kTestGraphqlEndpoint,
                  context: context,
                  refreshTokenEndpoint: '',
                  userID: userID,
                ),
                child: MaterialApp(
                  theme: AppTheme.getAppTheme(),
                  navigatorKey: appGlobalNavigatorKey,
                  navigatorObservers: <NavigatorObserver>[
                    SentryNavigatorObserver(),
                  ],
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: AppRouter.generateRoute,
                  initialRoute: initialRoute,
                  // initialRoute: AppRoutes.cookOnboardingPage,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
 