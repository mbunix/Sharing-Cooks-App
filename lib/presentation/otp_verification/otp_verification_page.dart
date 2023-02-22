import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sharing_cooks/application/redux/actions/batch_update_misc_state_action.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/global_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                largeVerticalSizedBox,
                Image.asset(appLogoPngPath),
                largeVerticalSizedBox,
                Text(
                  verifyNumberString,
                  style: heavyBoldSize22Text(),
                  textAlign: TextAlign.center,
                ),
                smallVerticalSizedBox,
                Text(
                  verifyNumberBodyString,
                  style: boldSize14Text(AppColors.greyTextColor),
                  textAlign: TextAlign.center,
                ),
                size15VerticalSizedBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: PinCodeTextField(
                    pinTheme: PinTheme(
                      inactiveColor: AppColors.blackTextColor,
                      activeColor: Theme.of(context).primaryColor,
                      selectedColor: AppColors.blackTextColor,
                    ),
                    showCursor: false,
                    length: 4,
                    appContext: appGlobalNavigatorKey.currentContext ?? context,
                    onChanged: (String val) {},
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onCompleted: (String val) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.homePage,
                        (Route<dynamic> route) => false,
                      );
                      StoreProvider.dispatch<AppState>(
                        context,
                        BatchUpdateMiscStateAction(
                          initialRoute: AppRoutes.homePage,
                        ),
                      );
                    },
                  ),
                ),
                mediumVerticalSizedBox,
                Text(
                  dintReceiveSMSString,
                  style: boldSize14Text(AppColors.greyTextColor),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
                Text(
                  resendNewCodeString,
                  style: boldSize14Text(Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
