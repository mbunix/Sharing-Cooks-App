import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class EditAccountPage extends StatelessWidget {
  const EditAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: editAccountString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: <Widget>[
                      Image.asset(addProfilePicImagePngPath),
                      Positioned(
                        bottom: 6,
                        right: 6,
                        child: SvgPicture.asset(addImageIconSvgPath),
                      ),
                    ],
                  ),
                ),
                mediumVerticalSizedBox,
                Text(
                  nameString,
                  style:
                      boldSize14Text(AppColors.blackTextColor.withOpacity(0.9)),
                ),
                verySmallVerticalSizedBox,
                CustomTextFieldWithBorder(
                  maxLines: 1,
                  hintText: enterYourFullNameString,
                  initialValue: 'Winnie Atkins',
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
                Text(
                  foodPreferencesString,
                  style:
                      boldSize14Text(AppColors.blackTextColor.withOpacity(0.9)),
                ),
                verySmallVerticalSizedBox,
                CustomTextFieldWithBorder(
                  minLines: 3,
                  maxLines: 6,
                  maxLength: 300,
                  hintText: aLittleBitAboutYouString,
                  initialValue:
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content ',
                  onFieldSubmitted: (_) async {},
                  hintStyle: veryBoldSize16Text(
                    AppColors.blackTextColor.withOpacity(
                      0.5,
                    ),
                  ),
                  borderColor: AppColors.greyTextColor.withOpacity(0.5),
                  customFillColor: Colors.transparent,
                  onChanged: (String val) {},
                ),
                mediumVerticalSizedBox,
                Text(
                  mpesaNumberString,
                  style:
                      boldSize14Text(AppColors.blackTextColor.withOpacity(0.9)),
                ),
                verySmallVerticalSizedBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyTextColor.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
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
                      Text(
                        changeString,
                        style: veryBoldSize13Text(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                mediumVerticalSizedBox,
                Text(
                  deliverylocationString,
                  style:
                      boldSize14Text(AppColors.blackTextColor.withOpacity(0.9)),
                ),
                verySmallVerticalSizedBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyTextColor.withOpacity(0.5),
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
                            'Mirema springs apartments',
                            style: veryBoldSize13Text(
                              AppColors.blackTextColor.withOpacity(
                                0.5,
                              ),
                            ),
                          ),
                          Text(
                            deleteString,
                            style: veryBoldSize13Text(
                              AppColors.redColor,
                            ),
                          ),
                        ],
                      ),
                      smallVerticalSizedBox,
                      Container(
                        width: double.infinity,
                        height: 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                      ),
                      smallVerticalSizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '123, Anniversary Towers',
                            style: veryBoldSize13Text(
                              AppColors.blackTextColor.withOpacity(
                                0.5,
                              ),
                            ),
                          ),
                          Text(
                            deleteString,
                            style: veryBoldSize13Text(
                              AppColors.redColor,
                            ),
                          ),
                        ],
                      ),
                      smallVerticalSizedBox,
                      Container(
                        width: double.infinity,
                        height: 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.blackTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                      ),
                      smallVerticalSizedBox,
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                          context,
                          AppRoutes.enableLocationPage,
                        ),
                        child: Text(
                          addNewLocationString,
                          style: veryBoldSize13Text(
                            Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                mediumVerticalSizedBox,
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          key: primaryActionButtonKey,
          onPressed: () {},
          child: const Text(saveDetailsString),
        ),
      ),
    );
  }
}
