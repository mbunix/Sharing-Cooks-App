import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RatingItem(
              ratingCount: 5,
              ratingValue: 5,
            ),
            RatingItem(
              ratingCount: 4,
              ratingValue: 4,
            ),
            RatingItem(
              ratingCount: 0,
              ratingValue: 3,
            ),
            RatingItem(
              ratingCount: 1,
              ratingValue: 2,
            ),
            RatingItem(
              ratingCount: 0,
              ratingValue: 1,
            ),
          ],
        ),
        tinyHorizontalSizedBox,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '4.2',
                      style: normalSize24Text(AppColors.blackTextColor),
                    ),
                    verySmallHorizontalSizedBox,
                    SvgPicture.asset(startFilledIconSvgPath),
                  ],
                ),
                verySmallVerticalSizedBox,
                Text(
                  '10 Reviews',
                  style: normalSize12Text(AppColors.greyTextColor),
                ),
              ],
            ),
            size40VerticalSizedBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '88%',
                  style: normalSize24Text(AppColors.blackTextColor),
                ),
                verySmallVerticalSizedBox,
                Text(
                  '10 Reviews',
                  style: normalSize12Text(AppColors.greyTextColor),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RatingItem extends StatelessWidget {
  final int ratingValue;
  final int ratingCount;

  const RatingItem({
    super.key,
    required this.ratingValue,
    required this.ratingCount,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Text(
            ratingValue.toString(),
            style: normalSize14Text(AppColors.blackTextColor),
          ),
          smallHorizontalSizedBox,
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.85,
            height: 10,
            child: FAProgressBar(
              animatedDuration: const Duration(microseconds: 500),
              displayTextStyle: const TextStyle(color: Colors.transparent),
              backgroundColor: AppColors.blackTextColor.withOpacity(0.1),
              progressColor: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(2),
              currentValue: ratingCount > 0 ? ratingValue * 20 : 0,
            ),
          ),
          smallHorizontalSizedBox,
          Text(
            '($ratingCount)',
            style: normalSize14Text(AppColors.greyTextColor),
          ),
        ],
      ),
    );
  }
}
