import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/redux/actions/batch_update_misc_state_action.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/meals_listing/meals_listing.dart';
import 'package:sharing_cooks/presentation/reviews/widgets/comments_list_widget.dart';
import 'package:sharing_cooks/presentation/reviews/widgets/summary_container.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class MyKitchenPage extends StatelessWidget {
  const MyKitchenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: false,
        centerTitle: false,
        title: "Michelle's Kitchen",
        leadingWidget: Container(
          padding: const EdgeInsets.only(left: 24.0),
          height: 25.0,
          child: InkWell(
            onTap: () => StoreProvider.dispatch(
              context,
              BatchUpdateMiscStateAction(
                selectedProfile: ProfileType.client,
              ),
            ),
            child: SvgPicture.asset(
              switchIconSvgPath,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 24.0),
            height: 25.0,
            child: InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.editCookProfilePage,
              ),
              child: SvgPicture.asset(
                editIconSvgPath,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
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
                  )
                ],
              ),
              mediumVerticalSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '20',
                        style: veryBoldSize22Text(AppColors.greyTextColor)
                            .copyWith(fontSize: 24),
                      ),
                      Text(
                        'Listings',
                        style: veryBoldSize16Text(AppColors.greyTextColor),
                      ),
                    ],
                  ),
                  largeHorizontalSizedBox,
                  Column(
                    children: <Widget>[
                      Text(
                        '45',
                        style: veryBoldSize22Text(AppColors.greyTextColor)
                            .copyWith(fontSize: 24),
                      ),
                      Text(
                        'Served',
                        style: veryBoldSize16Text(AppColors.greyTextColor),
                      ),
                    ],
                  ),
                  largeHorizontalSizedBox,
                  Column(
                    children: <Widget>[
                      Text(
                        '40',
                        style: veryBoldSize22Text(AppColors.greyTextColor)
                            .copyWith(fontSize: 24),
                      ),
                      Text(
                        'Followers',
                        style: veryBoldSize16Text(AppColors.greyTextColor),
                      ),
                    ],
                  ),
                ],
              ),
              mediumVerticalSizedBox,
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(4), // Creates border
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor:
                              Theme.of(context).colorScheme.secondary,
                          tabs: <Widget>[
                            SizedBox(
                              height: 32,
                              child: Tab(
                                child: Text(
                                  'Current listings',
                                  textAlign: TextAlign.center,
                                  style: boldSize12Text()
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                              child: Tab(
                                child: Text(
                                  'Experience',
                                  textAlign: TextAlign.center,
                                  style: boldSize12Text()
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                              child: Tab(
                                child: Row(
                                  children: <Widget>[
                                    // SvgPicture.asset(
                                    //   starIconSvgPath,
                                    //   color: Theme.of(context)
                                    //       .colorScheme
                                    //       .secondary,
                                    // ),
                                    // tinyHorizontalSizedBox,
                                    Flexible(
                                      child: Text(
                                        '4.5 / 29 Reviews',
                                        textAlign: TextAlign.center,
                                        style: boldSize12Text().copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verySmallVerticalSizedBox,
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            const MealsListWidget(),
                            const MealsListWidget(),
                            ListView(
                              physics: const BouncingScrollPhysics(),
                              children: const <Widget>[
                                SummaryContainer(),
                                SizedBox(
                                  height: 20,
                                ),
                                CommentsList()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  key: primaryActionButtonKey,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.listMealPage,
                    );
                  },
                  child: const Text('List a meal'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
