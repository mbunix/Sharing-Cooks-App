import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class EditCookProfilePage extends StatelessWidget {
  const EditCookProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        yourCookProfileString,
                        style: veryBoldSize20Text(AppColors.blackTextColor),
                      ),
                      smallVerticalSizedBox,
                      Text(
                        fillUpYourDetailsString,
                        style: normalSize14Text(AppColors.blackTextColor),
                      ),
                      size15VerticalSizedBox,
                      Text(
                        selfieString,
                        style: normalSize14Text(AppColors.blackTextColor),
                      ),
                      verySmallVerticalSizedBox,
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: AppColors.blackTextColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Center(
                          child: Text(
                            'MK',
                            style: veryBoldSize32Text(AppColors.whiteColor),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Text(
                        uploadPhotoString,
                        style: normalSize14Text(AppColors.greenColor),
                      ),
                      mediumVerticalSizedBox,
                      // Full Name
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          enterKitchenNameString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        maxLines: 1,
                        borderWidth: 0.8,
                        // hintText: enterYourFullNameString,
                        hintText: 'My kitchen name',
                        initialValue: '',
                        onFieldSubmitted: (_) async {},
                        hintStyle: veryBoldSize16Text(
                          AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                        borderColor: AppColors.greyTextColor.withOpacity(0.2),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      mediumVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          emailAddressString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Stack(
                        children: <Widget>[
                          CustomTextFieldWithBorder(
                            maxLines: 1,
                            borderWidth: 0.8,
                            hintText: 'example@gmail.com',
                            initialValue: '',
                            onFieldSubmitted: (_) async {},
                            hintStyle: veryBoldSize16Text(
                              AppColors.blackTextColor.withOpacity(
                                0.5,
                              ),
                            ),
                            borderColor:
                                AppColors.greyTextColor.withOpacity(0.2),
                            customFillColor: Colors.transparent,
                            onChanged: (String val) {},
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 80,
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  verifyString,
                                  style: boldSize14Text(AppColors.greenColor),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      mediumVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          phoneNumbersString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,

                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyTextColor.withOpacity(0.2),
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '+254712345678',
                                  style: veryBoldSize13Text(
                                    AppColors.blackTextColor.withOpacity(
                                      0.5,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      editString,
                                      style: veryBoldSize13Text(
                                        AppColors.greenColor,
                                      ),
                                    ),
                                    smallHorizontalSizedBox,
                                    Text(
                                      deleteString,
                                      style: veryBoldSize13Text(
                                        AppColors.redColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            smallVerticalSizedBox,
                            Container(
                              width: double.infinity,
                              height: 0.8,
                              decoration: BoxDecoration(
                                color: AppColors.greyTextColor.withOpacity(
                                  0.2,
                                ),
                              ),
                            ),
                            smallVerticalSizedBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '+254787654321',
                                  style: veryBoldSize13Text(
                                    AppColors.blackTextColor.withOpacity(
                                      0.5,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      editString,
                                      style: veryBoldSize13Text(
                                        AppColors.greenColor,
                                      ),
                                    ),
                                    smallHorizontalSizedBox,
                                    Text(
                                      deleteString,
                                      style: veryBoldSize13Text(
                                        AppColors.redColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            smallVerticalSizedBox,
                            Container(
                              width: double.infinity,
                              height: 0.8,
                              decoration: BoxDecoration(
                                color: AppColors.greyTextColor.withOpacity(0.2),
                              ),
                            ),
                            smallVerticalSizedBox,
                            InkWell(
                              // onTap: () => Navigator.pushNamed(
                              //   context,
                              //   AppRoutes.enableLocationPage,
                              // ),
                              child: Text(
                                addNewNumbersString,
                                style: veryBoldSize13Text(
                                  Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      mediumVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          kitchenLocationString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyTextColor.withOpacity(0.2),
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Apex Court, Ngong Road, Nairobi',
                              style: veryBoldSize16Text(
                                AppColors.blackTextColor.withOpacity(
                                  0.5,
                                ),
                              ),
                            ),
                            Text(
                              changeString,
                              style: boldSize14Text(AppColors.greenColor),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                      mediumVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          deliveryRadiusString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      // Radiuses: 100m, 500m,  1km, 5km, 10 km
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.greyTextColor.withOpacity(0.2),
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '$selectString...',
                              style: veryBoldSize16Text(
                                AppColors.blackTextColor.withOpacity(
                                  0.5,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.greyTextColor,
                            ),
                          ],
                        ),
                      ),
                      mediumVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          nationalIDString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Stack(
                        children: <Widget>[
                          CustomTextFieldWithBorder(
                            maxLines: 1,
                            borderWidth: 0.8,
                            hintText: enterIdNumberString,
                            initialValue: '',
                            // suffixIcon: Align(
                            //   alignment: Alignment.centerRight,
                            //   child: Container(
                            //     width: 80,
                            //     padding: const EdgeInsets.only(right: 8.0),
                            //     child: Text(
                            //       verifyString,
                            //       style: boldSize14Text(AppColors.greenColor),
                            //       textAlign: TextAlign.right,
                            //     ),
                            //   ),
                            // ),
                            onFieldSubmitted: (_) async {},
                            hintStyle: veryBoldSize16Text(
                              AppColors.blackTextColor.withOpacity(
                                0.5,
                              ),
                            ),
                            borderColor:
                                AppColors.greyTextColor.withOpacity(0.2),
                            customFillColor: Colors.transparent,
                            onChanged: (String val) {},
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SvgPicture.asset(verifiedIconSvgPath),
                              ),
                            ),
                          ),
                        ],
                      ),
                      mediumVerticalSizedBox,
                      DottedBorder(
                        color: AppColors.greyTextColor.withOpacity(
                          0.6,
                        ),
                        dashPattern: const <double>[8, 4],
                        strokeWidth: 0.8,
                        radius: const Radius.circular(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 24.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(uploadIconSvgPath),
                              size15HorizontalSizedBox,
                              Flexible(
                                child: Text(
                                  uploadCopyOfIdString,
                                  style: normalSize14Text(
                                    AppColors.greyTextColor.withOpacity(
                                      0.6,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      mediumVerticalSizedBox,
                      // Bio and work experience
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Short bio',
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        maxLines: 8,
                        minLines: 5,
                        maxLength: 220,
                        borderWidth: 0.8,
                        hintText: 'Introduce yourself...',
                        initialValue: '',
                        onFieldSubmitted: (_) async {},
                        hintStyle: veryBoldSize16Text(
                          AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                        borderColor: AppColors.greyTextColor.withOpacity(0.2),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      mediumVerticalSizedBox,
                      // catering institution
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          cateringInstitutionAttendString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        maxLines: 1,
                        borderWidth: 0.8,
                        initialValue: '',
                        onFieldSubmitted: (_) async {},
                        hintStyle: veryBoldSize16Text(
                          AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                        borderColor: AppColors.greyTextColor.withOpacity(0.2),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      mediumVerticalSizedBox,

                      // Upload certificate
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          uploadCertificateString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      DottedBorder(
                        color: AppColors.greyTextColor.withOpacity(
                          0.6,
                        ),
                        dashPattern: const <double>[8, 4],
                        strokeWidth: 0.8,
                        radius: const Radius.circular(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 24.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(uploadIconSvgPath),
                              size15HorizontalSizedBox,
                              Flexible(
                                child: Text(
                                  uploadCopyOfCertString,
                                  style: normalSize14Text(
                                    AppColors.greyTextColor.withOpacity(
                                      0.6,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      mediumVerticalSizedBox,
                      // catering license
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          cateringLicenseString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        maxLines: 1,
                        borderWidth: 0.8,
                        hintText: enterLicenseNumberString,
                        initialValue: '',
                        onFieldSubmitted: (_) async {},
                        hintStyle: veryBoldSize16Text(
                          AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                        borderColor: AppColors.greyTextColor.withOpacity(0.2),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      mediumVerticalSizedBox,

                      // Upload photo of license
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          uploadCateringLicenseString,
                          style: boldSize14Text(
                            AppColors.blackTextColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      DottedBorder(
                        color: AppColors.greyTextColor.withOpacity(
                          0.6,
                        ),
                        dashPattern: const <double>[8, 4],
                        strokeWidth: 0.8,
                        radius: const Radius.circular(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 24.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(uploadIconSvgPath),
                              size15HorizontalSizedBox,
                              Flexible(
                                child: Text(
                                  uploadClearPhotoOfLicenseString,
                                  style: normalSize14Text(
                                    AppColors.greyTextColor.withOpacity(
                                      0.6,
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  key: primaryActionButtonKey,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.homePage,
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  child: const Text(saveDetailsString),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
