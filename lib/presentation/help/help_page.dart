import 'package:flexible_carousel_slider/flexible_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> sliderWidgets = <Widget>[
      const SliderItem(
        title: buyDeliciousMealsFromCooksString,
        body: eatHealthyMealsFromCooksString,
        svgIconPath: onboardingIllustrationOneSvgPath,
      ),
      const SliderItem(
        title: pleaseOrderMealsString,
        body: planMealsAheadOdTimeString,
        svgIconPath: onboardingIllustrationTwoSvgPath,
      ),
      const SliderItem(
        title: fasterFreshAndFlavorfulCooksString,
        body: mealsWillBeDeliveredFreshFromKitchensString,
        svgIconPath: onboardingIllustrationThreeSvgPath,
      ),
    ];

    final List<Widget> actionsList = <Widget>[
      ActionItem(
        onTapCallBack: () => Navigator.pushNamed(context, AppRoutes.faqsPage),
        titleString: frequentlyAskedQuestionsString,
        leadingIconSvgPath: helpIconSvgPath,
      ),
      const ActionItem(
        titleString: chatWithAdminString,
        leadingIconSvgPath: chatHeadsetIconSvgPath,
      ),
      ActionItem(
        onTapCallBack: () =>
            Navigator.pushNamed(context, AppRoutes.termsOfServicePage),
        titleString: termsOfServiceString,
        leadingIconSvgPath: termsDocIconSvgPath,
      ),
      ActionItem(
        onTapCallBack: () =>
            Navigator.pushNamed(context, AppRoutes.privacyPolicyPage),
        titleString: privacyPolicyString,
        leadingIconSvgPath: privacyPolicySvgPath,
      ),
    ];
    return Scaffold(
      appBar: const CustomAppBar(
        title: howSharingCooksWorksString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  autoPlay: false,
                  children: <Widget>[
                    ...sliderWidgets,
                  ],
                ),
                veryLargeVerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.35,
                    ),
                  ),
                ),
                ...actionsList,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final String leadingIconSvgPath;
  final String titleString;
  final VoidCallback? onTapCallBack;

  const ActionItem({
    super.key,
    required this.leadingIconSvgPath,
    required this.titleString,
    this.onTapCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCallBack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          mediumVerticalSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(leadingIconSvgPath),
                  smallHorizontalSizedBox,
                  Text(
                    titleString,
                    style: normalSize14Text(AppColors.greyTextColor),
                  ),
                ],
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.greyTextColor,
              )
            ],
          ),
          mediumVerticalSizedBox,
          Container(
            width: double.infinity,
            height: 0.5,
            decoration: BoxDecoration(
              color: AppColors.blackTextColor.withOpacity(
                0.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  final String title;
  final String body;
  final String svgIconPath;

  const SliderItem({
    super.key,
    required this.title,
    required this.body,
    required this.svgIconPath,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: AppColors.greyTextColor.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: SvgPicture.asset(svgIconPath),
          ),
          mediumVerticalSizedBox,
          Text(
            title,
            style: heavySize20Text(AppColors.blackTextColor),
          ),
          mediumVerticalSizedBox,
          Text(
            body,
            style: boldSize20Text(AppColors.blackTextColor),
          ),
        ],
      ),
    );
  }
}
