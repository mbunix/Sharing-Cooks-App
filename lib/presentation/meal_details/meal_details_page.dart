import 'package:flexible_carousel_slider/flexible_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/cart_button.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class MealDetailsPage extends StatefulWidget {
  const MealDetailsPage({super.key});

  @override
  State<MealDetailsPage> createState() => _MealDetailsPageState();
}

class _MealDetailsPageState extends State<MealDetailsPage> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    final List<Widget> meals = <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          meal4PngPath,
          width: MediaQuery.of(context).size.width - 70,
          height: 300,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          meal2PngPath,
          width: MediaQuery.of(context).size.width - 70,
          height: 300,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          meal3PngPath,
          width: MediaQuery.of(context).size.width - 70,
          height: 300,
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back),
                    ),
                    const CartButton(),
                  ],
                ),
                mediumVerticalSizedBox,
                CarouselSlider(autoPlay: false,children: <Widget>[...meals],),
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Kienyeji Chicken',
                      style: veryBoldSize20Text(AppColors.blackTextColor),
                    ),
                    Text(
                      '350/=',
                      style: veryBoldSize20Text(AppColors.greenColor),
                    ),
                  ],
                ),
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: AssetImage(meal1PngPath),
                        ),
                        mediumHorizontalSizedBox,
                        Text(
                          "Michelle's Kitchen",
                          style: boldSize14Text(AppColors.greyTextColor),
                        )
                      ],
                    ),
                    Text(
                      '1KM away',
                      style: boldSize14Text(AppColors.greyTextColor),
                    )
                  ],
                ),
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(starIconSvgPath),
                        verySmallHorizontalSizedBox,
                        Text(
                          '4.6 (29 Reviews)',
                          style: boldSize14Text(AppColors.greyTextColor),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(hotMealIconSvgPath),
                        verySmallHorizontalSizedBox,
                        Text(
                          '8 servings available',
                          style: boldSize14Text(AppColors.greyTextColor),
                        )
                      ],
                    ),
                  ],
                ),
                mediumVerticalSizedBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Delivered by 12PM on Friday 2023-01-23',
                    style: heavySize16Text(AppColors.greyTextColor),
                    textAlign: TextAlign.left,
                  ),
                ),
                smallVerticalSizedBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Free range chicken cuts, stewed , boiled or deep fried served with starch and vegetables.',
                    style: boldSize14Text(AppColors.greyTextColor),
                    textAlign: TextAlign.left,
                  ),
                ),
                largeVerticalSizedBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'How many servings do you want...',
                    style: boldSize16Text(AppColors.blackTextColor),
                    textAlign: TextAlign.left,
                  ),
                ),
                largeVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: itemCount > 1
                          ? () => setState(() {
                                itemCount--;
                              })
                          : null,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: itemCount > 1
                                ? Theme.of(context).primaryColor
                                : AppColors.greyTextColor.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: itemCount > 1
                            ? Icon(
                                Icons.remove,
                                color: Theme.of(context).primaryColor,
                              )
                            : null,
                      ),
                    ),
                    mediumHorizontalSizedBox,
                    Text(
                      itemCount.toString(),
                      style: veryBoldSize18Text(AppColors.blackTextColor),
                    ),
                    mediumHorizontalSizedBox,
                    InkWell(
                      onTap: () => setState(() {
                        itemCount++;
                      }),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                veryLargeVerticalSizedBox,
                veryLargeVerticalSizedBox,
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
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.completeOrderPage),
          child: const Text(orderThisMealString),
        ),
      ),
    );
  }
}
