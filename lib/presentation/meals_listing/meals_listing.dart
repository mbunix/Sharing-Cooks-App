import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/cart_button.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';

class MealsListing extends StatefulWidget {
  const MealsListing({super.key});

  @override
  State<MealsListing> createState() => _MealsListingState();
}

class _MealsListingState extends State<MealsListing> {
  TextEditingController searchController = TextEditingController();
  final Map<String, String> mealCategories = <String, String>{
    '1': 'All',
    '7': 'Main meals',
    '2': 'Breakfast',
    '3': 'Vegetarian',
    '4': 'Drinks',
    '5': 'Snacks',
    '6': 'Salads',
  };
  Map<String, String> selectedMealCategory = <String, String>{
    '1': 'All',
  };

  List<Widget> mealWidgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    setState(() {
      mealWidgets = <Widget>[];
    });

    mealCategories.forEach((String key, String value) {
      mealWidgets.add(
        InkWell(
          onTap: () {
            setState(() {
              selectedMealCategory = <String, String>{key: value};
            });
          },
          child: Container(
            margin: EdgeInsets.only(
              left: key == '1' ? 12 : 0.0,
              right: key != '4' ? 12 : 0.0,
            ),
            decoration: BoxDecoration(
              color: selectedMealCategory.keys.first == key
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            child: Center(
              child: Text(
                value,
                style: boldSize11Text(
                  selectedMealCategory.keys.first == key
                      ? AppColors.whiteColor
                      : Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0),
          child: DefaultTabController(
            length: 2,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                          context,
                          AppRoutes.enableLocationPage,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 72,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: deliveringToString,
                                    style: veryBoldSize14Text(
                                      AppColors.blackTextColor,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Mirema Springs Apartments',
                                        style: veryBoldSize14Text(
                                          Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              smallHorizontalSizedBox,
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.greyTextColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CartButton()
                    ],
                  ),
                  smallVerticalSizedBox,
                  Container(
                    width: double.infinity,
                    color: AppColors.backgroundColor,
                    height: 1,
                  ),
                  mediumVerticalSizedBox,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(8), // Creates border
                        color: Theme.of(context).primaryColor,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      tabs: <Widget>[
                        SizedBox(
                          height: 36,
                          child: Tab(
                            child: Text(
                              readyMealsString,
                              textAlign: TextAlign.center,
                              style: boldSize12Text()
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Tab(
                            child: Text(
                              futureMealsString,
                              textAlign: TextAlign.center,
                              style: boldSize12Text()
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verySmallVerticalSizedBox,
                  CustomTextFieldWithBorder(
                    controller: searchController,
                    hintText: whatDoYouWantEatString,
                    onFieldSubmitted: (_) async {},
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        top: 12,
                        bottom: 12,
                      ),
                      child: InkWell(
                        onTap: () async {},
                        child: SvgPicture.asset(
                          searchIconSvgPath,
                        ),
                      ),
                    ),
                    borderColor: AppColors.greyTextColor.withOpacity(0.5),
                    customFillColor: Colors.transparent,
                    onChanged: (String val) {},
                  ),
                  smallVerticalSizedBox,
                  SizedBox(
                    height: 32,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ...mealWidgets,
                      ],
                    ),
                  ),
                  smallVerticalSizedBox,
                  const Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        MealsListWidget(),
                        MealsListWidget(
                            // isFuture: true,
                            ),
                      ],
                    ),
                  ),
                ],
              ),
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
              Navigator.pushNamed(context, AppRoutes.customMealPage),
          child: const Text(getSomethingString),
        ),
      ),
    );
  }
}

class MealsListWidget extends StatelessWidget {
  const MealsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const <Widget>[
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
        MealItem(),
      ],
    );
  }
}

class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.mealDetailsPage,
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          bottom: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.whiteColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 2.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: const Offset(
                1.0, // Move to right 5  horizontally
                1.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(meal1PngPath),
                smallHorizontalSizedBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Chicken Biryani',
                      style: heavySize14Text(AppColors.blackTextColor),
                    ),
                    mediumVerticalSizedBox,
                    Text(
                      "Michelle's Kitchen",
                      style: boldSize13Text(AppColors.greyTextColor),
                    ),
                    mediumVerticalSizedBox,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SvgPicture.asset(starIconSvgPath),
                        verySmallHorizontalSizedBox,
                        Text(
                          '4.6 (29 Reviews)',
                          style: boldSize12Text(AppColors.greyTextColor),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            smallHorizontalSizedBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '250/=',
                    style: heavySize14Text(AppColors.greenColor),
                  ),
                  mediumVerticalSizedBox,
                  Text(
                    '1Km',
                    style: boldSize13Text(AppColors.greyTextColor),
                  ),
                  mediumVerticalSizedBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SvgPicture.asset(hotMealIconSvgPath),
                      verySmallHorizontalSizedBox,
                      Text(
                        '8',
                        style: boldSize12Text(AppColors.greyTextColor),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
