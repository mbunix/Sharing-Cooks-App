import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:http/http.dart' as http;
import 'package:sharing_cooks/domain/value_objects/constants.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';

String getErrorMessage([String message = '']) {
  if (message.isEmpty) {
    return defaultUserFriendlyMessage;
  } else {
    return 'Sorry, an error occurred while $message.'
        ' Please try again later, or contact support center';
  }
}

/// Reports an error to [Sentry]
dynamic reportErrorToSentry({
  /// A human readable description of the error
  required String hint,

  /// The [AppState] used to add contact info
  AppState? state,

  /// Used in cases of HTTP request errors
  http.Response? response,

  // Should be a derivative of the [AppRoutes class] i.e AppRoutes.loginPage
  String? route,

  /// Any exception object for example from a try {...} catch {...} operation
  Object? exception,

  /// The GraphQL query
  String? query,

  /// Variables
  Map<String, dynamic>? variables,
}) {
  final Map<String, dynamic> stackTrace = <String, dynamic>{};
  //! TODO: Revert when state is ready
  // final String contact =
  //     state?.clientState?.user?.primaryContact?.value ?? UNKNOWN;
  // final bool isSignedIn = state?.clientState?.isSignedIn ?? false;

  if (response != null) {
    stackTrace.addAll(
      <String, dynamic>{
        'request': response.request.toString(),
        'body': response.body,
        'statusCode': response.statusCode,
      },
    );
  }

  // if (isSignedIn) {
  //   stackTrace.addAll(<String, dynamic>{'phoneNumber': contact});
  // }

  stackTrace.addAll(<String, dynamic>{
    'exception': exception ?? UNKNOWN,
    'query': query ?? UNKNOWN,
    'variables': variables ?? UNKNOWN,
  });

  Sentry.captureException(stackTrace, stackTrace: stackTrace, hint: hint);
}

DateTime dateFromJson(String val) {
  final DateTime parsedDate =
      DateTime.tryParse(val)?.toLocal() ?? DateTime.now();
  return parsedDate;
}

String dateToJson(DateTime? val) {
  return val?.toIso8601String() ?? DateTime.now().toIso8601String();
}

//marketplace boxShadow
List<BoxShadow>customBoxShadow = <BoxShadow>[
  BoxShadow(
    color: AppColors.blackTextColor.withOpacity(0.12),
    blurRadius: 3,
    spreadRadius: 1,
  ),
];
