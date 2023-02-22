import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class ListMealPage extends StatelessWidget {
  const ListMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: listAMealString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '$photoString - ',
                      style: veryBoldSize16Text(AppColors.blackTextColor),
                    ),
                    Text(
                      addUpToThreePhotosString,
                      style: normalSize16Text(AppColors.blackTextColor),
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
                        SvgPicture.asset(pickPhotoIconSvgPath),
                        size15HorizontalSizedBox,
                        Flexible(
                          child: Text(
                            addPhotosString,
                            style: normalSize14Text(
                              AppColors.greyTextColor.withOpacity(
                                0.6,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                mediumVerticalSizedBox,
                // Meal Title
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    mealTitleString,
                    style: boldSize14Text(
                      AppColors.blackTextColor.withOpacity(0.9),
                    ),
                  ),
                ),
                verySmallVerticalSizedBox,
                CustomTextFieldWithBorder(
                  maxLines: 1,
                  borderWidth: 0.8,
                  hintText: enterMealNameString,
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

                // Category
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    categoryString,
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
                // Description
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Description',
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
                    'Number of servings offered',
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
                // Price
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Price',
                    style: boldSize14Text(
                      AppColors.blackTextColor.withOpacity(0.9),
                    ),
                  ),
                ),
                verySmallVerticalSizedBox,
                CustomTextFieldWithBorder(
                  maxLines: 1,
                  borderWidth: 0.8,
                  hintText: 'Price',
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

                // Delivering time
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Delivering date and time',
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
                      // Wrap with the Normal date Picker
                      Text(
                        '2023-01-25',
                        style: veryBoldSize16Text(
                          AppColors.blackTextColor,
                        ),
                      ),
                      // Triggers an Overlay to pick time ranging from 7AM to 8PM
                      Text(
                        '1:00PM',
                        style: veryBoldSize16Text(
                          AppColors.blackTextColor,
                        ),
                      ),
                    ],
                  ),
                ), // number of servings

                size15VerticalSizedBox,
                Text(
                  'You should deliver between 12:30pm to 1:30pm',
                  style: veryBoldSize16Text(AppColors.greyTextColor),
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
                    onPressed: () {},
                    child: const Text(saveDetailsString),
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
