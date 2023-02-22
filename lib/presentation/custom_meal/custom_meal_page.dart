import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/cart_button.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/date_picker.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class CustomMealPage extends StatefulWidget {
  const CustomMealPage({super.key});

  @override
  State<CustomMealPage> createState() => _CustomMealPageState();
}

class _CustomMealPageState extends State<CustomMealPage> {
  final TextEditingController dobTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const Color labelColor = AppColors.secondaryTextColor;
    return Scaffold(
      appBar: const CustomAppBar(
        title: specifyYourMealMealString,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: CartButton(),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          mealNameString,
                          style: normalSize12Text(labelColor),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        hintText: enterMealNameString,
                        onFieldSubmitted: (_) async {},
                        borderColor: AppColors.greyTextColor.withOpacity(0.5),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      largeVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          WhenToDeliverString,
                          style: normalSize12Text(labelColor),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      DatePickerField(
                        allowFutureYears: true,
                        allowCurrentYear: true,
                        controller: dobTextController,
                        decoration: InputDecoration(
                          hintText: selectDateAndTimeString,
                          suffixIcon: const Icon(Icons.date_range),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: AppColors.greyTextColor.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: AppColors.greyTextColor.withOpacity(0.5),
                            ),
                          ),
                          hintStyle:
                              veryBoldSize13Text(AppColors.hintTextColor),
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: AppColors.greyTextColor.withOpacity(0.5),
                            ),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.all(8.0),
                        ),
                        style: const TextStyle(color: AppColors.greyTextColor),
                        onChanged: (String? value) {},
                      ),
                      largeVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          numberOfServingsString,
                          style: normalSize12Text(labelColor),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        hintText: enterNumberString,
                        onFieldSubmitted: (_) async {},
                        borderColor: AppColors.greyTextColor.withOpacity(0.5),
                        customFillColor: Colors.transparent,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (String val) {},
                        validator: (String? value) {
                          if ((value?.isNotEmpty ?? false) &&
                              int.parse(value!) > 10) {
                            return 'Serving cannot be more than 10';
                          }
                          return null;
                        },
                      ),
                      largeVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          instructionsString,
                          style: normalSize12Text(labelColor),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      CustomTextFieldWithBorder(
                        maxLines: 10,
                        minLines: 8,
                        hintText: addInstructionsForCustomMealString,
                        onFieldSubmitted: (_) async {},
                        borderColor: AppColors.greyTextColor.withOpacity(0.5),
                        customFillColor: Colors.transparent,
                        onChanged: (String val) {},
                      ),
                      largeVerticalSizedBox,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          deliverylocationString,
                          style: normalSize12Text(labelColor),
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: AppColors.blackColor.withOpacity(0.2),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 70,
                              width: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(meal2PngPath),
                              ),
                            ),
                            verySmallHorizontalSizedBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 142,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Delivery spot',
                                        style: boldSize14Text(
                                          AppColors.blackTextColor,
                                        ),
                                      ),
                                      Text(
                                        'change',
                                        style: boldSize14Text(
                                          Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                smallVerticalSizedBox,
                                Text(
                                  'Apex Court, Ngong Road, Nairobi',
                                  style: boldSize14Text(
                                    AppColors.blackTextColor.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      mediumVerticalSizedBox,
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 4.0,
                ),
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  key: primaryActionButtonKey,
                  onPressed: () {},
                  child: const Text(requestMealString),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
