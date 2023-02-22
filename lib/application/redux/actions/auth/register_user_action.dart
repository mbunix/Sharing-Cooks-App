// Dart imports:
import 'dart:async';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:sharing_cooks/app_service.dart';
import 'package:sharing_cooks/application/redux/actions/flags/app_flags.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';

/// [PhoneLoginAction] is a Redux Action whose job is to verify a user signed
/// in using valid credentials that match those stored in the backend
///
/// Otherwise delightfully notify user of a Login Error or credentials mismatch
///
/// should initiate phone login process
class RegisterUserAction extends ReduxAction<AppState> {
  RegisterUserAction({
    required this.email,
    required this.username,
    required this.password,
    required this.appService,
    this.errorCallback,
    this.successCallback,
  });

  final void Function(String? reason)? errorCallback;
  final VoidCallback? successCallback;
  final String email;
  final String username;
  final String password;
  final AppService appService;

  @override
  void after() {
    dispatch(WaitAction<AppState>.remove(phoneLoginFlag));
    super.after();
  }

  /// [wrapError] used to wrap error thrown during execution of the `reduce()` method
  /// returns a bottom sheet that gives the user a friendly message and an option to create an account
  @override
  void before() {
    super.before();
    dispatch(WaitAction<AppState>.add(phoneLoginFlag));
  }

  @override
  Future<AppState?> reduce() async {
    // try {
    //   Map<String, dynamic> response =
    //       await appService.createNewUser(email, username, password);
    //   successCallback?.call();
    //   dispatch(
    //     NavigateAction<AppState>.pushNamedAndRemoveUntil(
    //       AppRoutes.homePage,
    //       (Route<dynamic> route) => false,
    //     ),
    //   );
    // } catch (err) {
    //   errorCallback?.call(err.toString());
    // }

    // final Map<String, dynamic> variables = <String, dynamic>{
    //   'password': password,
    //   'username': username
    // };

    // final Response httpResponse = await httpClient.callRESTAPI(
    //   endpoint: endpoint,
    //   method: httpPOST,
    //   variables: variables,
    // );

    // final ProcessedResponse processedResponse =
    //     processHttpResponse(httpResponse);

    // if (processedResponse.ok) {
    //   final Map<String, dynamic> parsed =
    //       jsonDecode(utf8.decode(processedResponse.response.bodyBytes))
    //           as Map<String, dynamic>;

    //   final UserState userState = UserState.fromJson(parsed);

    //   dispatch(
    //     UpdateUserStateAction(
    //       user: userState.user,
    //       token: userState.token,
    //       isSignedIn: true,
    //     ),
    //   );
    //   successCallback?.call();
    //   dispatch(
    //     NavigateAction<AppState>.pushNamedAndRemoveUntil(
    //       AppRoutes.homePage,
    //       (Route<dynamic> route) => false,
    //     ),
    //   );
    // } else {
    //   final Map<String, dynamic> parsed =
    //       jsonDecode(httpResponse.body) as Map<String, dynamic>;

    //   errorCallback?.call(parsed['message']);
    // }

    return null;
  }
}
