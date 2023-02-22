import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class PhoneVerificationPage extends StatefulWidget {
  const PhoneVerificationPage({super.key});

  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  FlCountryCodePicker countryPicker = const FlCountryCodePicker();
  CountryCode? code;

  @override
  void initState() {
    final List<String> favoriteCountries = <String>[
      'KE',
      'US',
      'UG',
      'UK',
      'TZ'
    ];
    countryPicker = FlCountryCodePicker(
      favorites: favoriteCountries,
      favoritesIcon: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    code = countryPicker.countryCodes
        .firstWhere((CountryCode element) => element.dialCode == '+254');
    super.initState();
  }

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
                  phoneVerificationTitleString,
                  style: heavyBoldSize22Text(),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
                Text(
                  phoneVerificationBodyString,
                  style: boldSize14Text(AppColors.greyTextColor),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        final CountryCode? newCode =
                            await countryPicker.showPicker(context: context);

                        if (newCode != null) {
                          setState(() {
                            code = newCode;
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 14.0,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: const BoxDecoration(
                          color: AppColors.inputBackgroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Row(
                          children: <Widget>[
                            code?.flagImage ?? const SizedBox(),
                            verySmallHorizontalSizedBox,
                            Text(
                              code?.dialCode ?? '+254',
                              style: normalSize16Text(AppColors.greyTextColor),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.greyTextColor,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                    verySmallHorizontalSizedBox,
                    Expanded(
                      child: CustomTextInputField(
                        hintText: '0000 000 0000',
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
                largeVerticalSizedBox,
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    key: primaryActionButtonKey,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.otpVerificationPage,
                      );
                    },
                    child: const Text(sendOneTimePasswordString),
                  ),
                ),
                largeVerticalSizedBox,
                InkWell(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.homePage,
                    (Route<dynamic> route) => false,
                  ),
                  child: Text(
                    skipForNowString,
                    style: boldSize14Text(Theme.of(context).primaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
