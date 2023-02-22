import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/graph_client.dart';
import 'package:sharing_cooks/application/services/base_context.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/presentation/core/app_wrapper_base.dart';

/// [AppWrapper] Is a top level Class used to wrap your application.
///
/// @params
/// - `child` the widget that will be wrapped by this wrapper
/// - `appName` A required string that identifies your application
/// - `graphQLClient` An instance of [IGraphQlClient] which is the '
/// 'blueprint of a valid GraphQL client.
/// - `appContexts` [context] app running environments.
/// - `eventBus` Used to log events
class AppWrapper extends StatefulWidget {
  const AppWrapper({
    Key? key,
    required this.child,
    required this.graphQLClient,
    required this.appContext,
    this.eventBus,
    this.baseContext,
  }) : super(key: key);

  /// [child] the widget that will be wrapped by this wrapper
  final Widget child;


  /// Used to send events to the backend
  final dynamic eventBus;

  /// [graphQLClient] is the graphql client from flutter_graphql_client package
  /// it is dynamic to avoid cyclic-dependency errors when packages
  /// cross depend on each other
  final IGraphQlClient graphQLClient;

  /// [context] is the environment which the app is running on. In app can run
  /// on multiple contexts, the intuition why [context] is a list.
  /// An app should have at least one context
  final AppContext appContext;

  final BaseContext? baseContext;

  @override
  AppWrapperState createState() => AppWrapperState();
}

class AppWrapperState extends State<AppWrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: const Key('sil_app_wrapper'),
      builder: (BuildContext context, BoxConstraints boxConstraints) {
        return AppWrapperBase(
          eventBus: widget.eventBus,
          graphQLClient: widget.graphQLClient,
          appContext: widget.appContext,
          customContext: widget.baseContext,
          child: widget.child,
        );
      },
    );
  }
}
