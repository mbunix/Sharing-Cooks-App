import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/redux/actions/batch_update_misc_state_action.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Winnie Atkins',
        showBackButton: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset(profilePicPngPath),
                    ),
                    smallHorizontalSizedBox,
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 188,
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content',
                              style: normalSize14Text(AppColors.blackTextColor),
                            ),
                          ),
                          size15VerticalSizedBox,
                          Row(
                            children: <Widget>[
                              Text(
                                '4.2',
                                style: veryBoldSize14Text(
                                  AppColors.blackTextColor,
                                ),
                              ),
                              verySmallHorizontalSizedBox,
                              SvgPicture.asset(startFilledIconSvgPath),
                              smallHorizontalSizedBox,
                              Flexible(
                                child: Text(
                                  'Mirema Springs, Nairobi',
                                  style:
                                      heavySize14Text(AppColors.blackTextColor),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                largeVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '20 Orders',
                      style: veryBoldSize16Text(AppColors.greenColor),
                    ),
                    smallHorizontalSizedBox,
                    Text(
                      '20 Pre-orders',
                      style: veryBoldSize16Text(Theme.of(context).primaryColor),
                    ),
                    smallHorizontalSizedBox,
                    Text(
                      '3 Cancelled',
                      style: veryBoldSize16Text(AppColors.greyTextColor),
                    ),
                  ],
                ),
                largeVerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                InkWell(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRoutes.editAccountPage,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(editIconSvgPath),
                          smallHorizontalSizedBox,
                          Text(
                            editYourAccountString,
                            style: normalSize14Text(AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                InkWell(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRoutes.reviewsPage,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            starIconSvgPath,
                            color: AppColors.greyTextColor,
                          ),
                          smallHorizontalSizedBox,
                          Text(
                            '4.5 / 29 Reviews',
                            style: normalSize14Text(AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                InkWell(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRoutes.transactionsHistoryPage,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(historyIconSvgPath),
                          smallHorizontalSizedBox,
                          Text(
                            transactionHistoryString,
                            style: normalSize14Text(AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(inviteIconSvgPath),
                        smallHorizontalSizedBox,
                        Text(
                          inviteAndEarnString,
                          style: normalSize14Text(AppColors.greyTextColor),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                InkWell(
                  onTap: () {
                    StoreProvider.dispatch(
                      context,
                      BatchUpdateMiscStateAction(
                        selectedProfile: ProfileType.cook,
                      ),
                    );
                    final bool onboardingComplete =
                        StoreProvider.state<AppState>(context)
                                ?.cookState
                                ?.onboardingComplete ??
                            false;
                    if (!onboardingComplete) {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.cookOnboardingPage,
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(switchIconSvgPath),
                          smallHorizontalSizedBox,
                          Text(
                            switchToCookString,
                            style: normalSize14Text(AppColors.greyTextColor),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(logoutIconSvgPath),
                        smallHorizontalSizedBox,
                        Text(
                          logoutString,
                          style: normalSize14Text(AppColors.greyTextColor),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
                size15VerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(deleteAccountIconSvgPath),
                        smallHorizontalSizedBox,
                        Text(
                          deleteAccountString,
                          style: normalSize14Text(AppColors.greyTextColor),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyTextColor,
                    ),
                  ],
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
