import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
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
                children: const <Widget>[
                  OnboardingSliderWidgetItem(
                    title: onboardingTourSliderTitleOne,
                    body: onboardingTourSliderBodyTextOne,
                    iconSvgPath: onboardingIllustrationOneSvgPath,
                  ),
                  OnboardingSliderWidgetItem(
                    title: onboardingTourSliderTitleTwo,
                    body: onboardingTourSliderBodyTextTwo,
                    iconSvgPath: onboardingIllustrationTwoSvgPath,
                  ),
                  OnboardingSliderWidgetItem(
                    title: onboardingTourSliderTitleThree,
                    body: onboardingTourSliderBodyTextThree,
                    iconSvgPath: onboardingIllustrationThreeSvgPath,
                  ),
                ],
              ),
            ),
            veryLargeVerticalSizedBox,
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                key: primaryActionButtonKey,
                onPressed: () {
                  if (currentIndex < 2) {
                    controller.animateToPage(
                      currentIndex + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear,
                    );
                  } else if (currentIndex == 2) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.phoneVerificationPage,
                      (Route<dynamic> route) => false,
                    );
                  }
                },
                child: Text(currentIndex < 2 ? nextString : finishString),
              ),
            ),
            largeVerticalSizedBox,
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

class OnboardingSliderWidgetItem extends StatelessWidget {
  const OnboardingSliderWidgetItem({
    super.key,
    required this.iconSvgPath,
    required this.title,
    required this.body,
  });

  final String iconSvgPath;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        veryLargeVerticalSizedBox,
        SvgPicture.asset(iconSvgPath),
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
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
      ],
    );
  }
}
