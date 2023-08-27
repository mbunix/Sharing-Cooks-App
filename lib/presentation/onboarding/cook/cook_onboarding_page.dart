import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/redux/actions/update_cook_state_action.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CookOnboardingPage extends StatefulWidget {
  const CookOnboardingPage({super.key});

  @override
  State<CookOnboardingPage> createState() => _CookOnboardingPageState();
}

class _CookOnboardingPageState extends State<CookOnboardingPage> {
  int currentIndex = 0;
  final PageController controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (int index) => setState(() {
                  currentIndex = index;
                }),
                children: <Widget>[
                  CookOnboardingSliderWidgetItem(
                    title: cookOnboardingTourSliderTitleOne,
                    body: cookOnboardingTourSliderBodyTextOne,
                    iconSvgPath: cookOnboardingIllustrationOneSvgPath,
                    currentIndex: currentIndex,
                    controller: controller,
                  ),
                  CookOnboardingSliderWidgetItem(
                    title: cookOnboardingTourSliderTitleTwo,
                    body: cookOnboardingTourSliderBodyTextTwo,
                    iconSvgPath: cookOnboardingIllustrationTwoSvgPath,
                    currentIndex: currentIndex,
                    controller: controller,
                  ),
                  CookOnboardingSliderWidgetItem(
                    title: cookOnboardingTourSliderTitleThree,
                    body: cookOnboardingTourSliderBodyTextThree,
                    iconSvgPath: cookOnboardingIllustrationThreeSvgPath,
                    currentIndex: currentIndex,
                    controller: controller,
                  ),
                ],
              ),
            ),
            smallVerticalSizedBox,
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  color: AppColors.blackTextColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                activeDotDecoration: DotDecoration(
                  color: AppColors.blackTextColor,
                  borderRadius: BorderRadius.circular(16),
                  dotBorder: const DotBorder(
                    color: AppColors.blackTextColor,
                    padding: 2,
                  ),
                ),
              ),
            ),
            veryLargeVerticalSizedBox,
          ],
        ),
      ),
    );
  }
}

class CookOnboardingSliderWidgetItem extends StatelessWidget {
  const CookOnboardingSliderWidgetItem({
    super.key,
    required this.iconSvgPath,
    required this.title,
    required this.body,
    required this.currentIndex,
    required this.controller,
  });

  final String iconSvgPath;
  final String title;
  final String body;
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        veryLargeVerticalSizedBox,
        SvgPicture.asset(iconSvgPath),
        SizedBox(
          height: MediaQuery.of(context).size.height / 26,
        ),
        Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: heavySize24Text(),
                textAlign: TextAlign.center,
              ),
              largeVerticalSizedBox,
              Text(
                body,
                style: boldSize14Text(AppColors.greyTextColor),
                textAlign: TextAlign.center,
              ),
              mediumVerticalSizedBox,
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  key: primaryActionButtonKey,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: () {
                    if (currentIndex < 2) {
                      controller.animateToPage(
                        currentIndex + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                    } else if (currentIndex == 2) {
                      StoreProvider.dispatch(
                        context,
                        UpdateCookStateAction(
                          onboardingComplete: true,
                        ),
                      );
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.editCookProfilePage,
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  child: Text(currentIndex < 2 ? nextString : finishString),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
