// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_graphql_client/graph_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_setup_data.dart';
import 'package:sharing_cooks/domain/value_objects/global_keys.dart';
import 'package:sharing_cooks/presentation/core/app_wrapper.dart';
import 'package:sharing_cooks/presentation/router/app_router.dart';

import 'mocks.dart';

// Project imports:

/// [buildTestWidget] is a widget wrapper used for testing
/// It wraps the widget with a `StoreProvider`, `AppWrapperBase`, `MaterialApp` and a `Scaffold`
/// Helps to avoid repetition across test files requiring the above widgets
///
/// The function will create a store for you if you don't provide one
Future<void> buildTestWidget({
  required WidgetTester tester,
  required Widget widget,
  Store<AppState>? store,
  IGraphQlClient? graphQlClient,
  List<NavigatorObserver>? navigatorObservers,
  Widget? endDrawer,
  Duration? duration,
}) async {
  await dotenv.load();

  NavigateAction.setNavigatorKey(appGlobalNavigatorKey);

  await tester.pumpWidget(
    StoreProvider<AppState>(
      store: store ?? Store<AppState>(initialState: AppState.initial()),
      child: AppWrapper(
        appContext: AppContext.AppTest,
        baseContext: devAppSetupData.customContext,
        graphQLClient: graphQlClient ?? mockGraphQlClient,
        child: MaterialApp(
          onGenerateRoute: AppRouter.generateRoute,
          navigatorKey: appGlobalNavigatorKey,
          navigatorObservers: navigatorObservers ?? <NavigatorObserver>[],
          home: Scaffold(endDrawer: endDrawer, body: widget),
        ),
      ),
    ),
    duration,
  );
}
