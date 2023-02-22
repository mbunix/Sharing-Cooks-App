import 'package:flutter/material.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_setup_data.dart';

AppSetupData getAppSetupData(AppContext context) {
  switch (context) {
    case AppContext.AppTest:
      return devAppSetupData;
    case AppContext.AppProd:
      return devAppSetupData;
    default:
      return devAppSetupData;
  }
}

/// [Dismiss snackbar]
SnackBarAction dismissSnackBar(String text, Color color, BuildContext context) {
  return SnackBarAction(
    label: text,
    textColor: color,
    onPressed: () {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    },
  );
}
