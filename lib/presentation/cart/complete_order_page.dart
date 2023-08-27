import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/redux/actions/bottom_nav_action.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class CompleteOrderPage extends StatelessWidget {
  const CompleteOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      completeYourOrderString,
                      style: veryBoldSize20Text(AppColors.blackTextColor),
                    ),
                    smallHorizontalSizedBox,
                  ],
                ),
                largeVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      itemsString,
                      style: veryBoldSize16Text(AppColors.blackTextColor),
                    ),
                    InkWell(
                      onTap: () {
                        StoreProvider.dispatch<AppState>(
                          context,
                          BottomNavAction(currentBottomNavIndex: 0),
                        );
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.homePage,
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        addItemsString,
                        style: boldSize16Text(Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
                mediumVerticalSizedBox,
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
                const MealItem(),
                const MealItem(),
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      totalString,
                      style: heavySize16Text(AppColors.blackTextColor),
                    ),
                    Text(
                      '754 KSh',
                      style: veryBoldSize18Text(AppColors.blackTextColor),
                    ),
                  ],
                ),
                mediumVerticalSizedBox,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     Text(
                //       'Delivering to : Mirema Springs Apartments.',
                //       style: veryBoldSize14Text(AppColors.blackTextColor),
                //     ),
                //     Text(
                //       changeString,
                //       style: boldSize14Text(Theme.of(context).primaryColor),
                //     ),
                //   ],
                // ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    deliverySpotString,
                    style: boldSize14Text(AppColors.secondaryTextColor),
                  ),
                ),
                smallVerticalSizedBox,
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
                            width: MediaQuery.of(context).size.width - 142,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Delivery spot',
                                  style:
                                      boldSize14Text(AppColors.blackTextColor),
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
                      ),
                    ],
                  ),
                ),
                size70VerticalSizedBox,
                Text(
                  'Pay KSh 754 using M-Pesa number',
                  style: boldSize16Text(AppColors.blackTextColor),
                ),
                smallVerticalSizedBox,
                Text(
                  '+254 722 333 444?',
                  style: heavySize20Text(AppColors.blackTextColor),
                ),
                smallVerticalSizedBox,
                Text(
                  useDifferentNumberString,
                  style: boldSize14Text(Theme.of(context).primaryColor),
                ),
                extremelyLargeVerticalSizedBox,
                Text(
                  'We will release your payment to [the cook] after you inspect and accept the delivery otherwise we will refund the payment to your account',
                  style: boldSize14Text(AppColors.blackTextColor),
                  textAlign: TextAlign.center,
                ),
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
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 1,
                  backgroundColor: AppColors.whiteColor,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              paymentFailedTextString,
                              style: heavySize17Text(AppColors.blackTextColor),
                            ),
                            InkWell(
                              onTap: () {
                                if (Navigator.canPop(context)) {
                                  Navigator.pop(context);
                                }
                              },
                              child: SvgPicture.asset(closeDialogIconSvgPath),
                            ),
                          ],
                        ),
                        largeVerticalSizedBox,
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: AppColors.redColor.withOpacity(0.15),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: SvgPicture.asset(errorIconSvgPath),
                              ),
                            ),
                            smallHorizontalSizedBox,
                            Text(
                              paymentFailedErrorMessageTextString,
                              style: boldSize16Text(AppColors.blackTextColor),
                            ),
                          ],
                        ),
                        largeVerticalSizedBox,
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (Navigator.canPop(context)) {
                                Navigator.pop(context);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.redColor,
                              textStyle:
                                  veryBoldSize14Text(AppColors.whiteColor),
                            ),
                            child: const Text(retryPaymentTextString),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text(completeYourOrderString),
        ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                meal4PngPath,
                width: 64,
                height: 64,
              ),
            ),
            smallHorizontalSizedBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 122,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.blackTextColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '1',
                                  style:
                                      boldSize14Text(AppColors.blackTextColor),
                                ),
                                verySmallHorizontalSizedBox,
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          verySmallHorizontalSizedBox,
                          Text(
                            'Kienyeji Chicken',
                            style: veryBoldSize16Text(AppColors.blackTextColor),
                          ),
                        ],
                      ),
                      Text(
                        '50 Ksh',
                        style: veryBoldSize16Text(AppColors.blackTextColor),
                      ),
                    ],
                  ),
                ),
                smallVerticalSizedBox,
                Text(
                  'Delivered on 2023-01-20 at 12PM',
                  style: boldSize14Text(AppColors.greyTextColor),
                ),
              ],
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
      ],
    );
  }
}
