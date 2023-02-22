import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        ReviewResponseWidget(
          assetPngPath: profilePicPngPath,
          name: "Michelle's kitchen",
          message:
              'The lunch offered was great. The Fruit juice is a must try! The chicken wings were amazing as well. I enjoyed my food from this kitchen',
        ),
        ReviewResponseWidget(
          assetPngPath: meal1PngPath,
          name: 'The snack plate',
          message:
              'There are some dishes that are exceptional, and others that are pretty mid… I’ve ordered a couple times now, and there are stand out dishes (like the kienyeji chicken) ,  The drinks are good, and there are a lot of options. The service is 50/50.',
        ),
        ReviewResponseWidget(
          assetPngPath: meal2PngPath,
          name: 'Bits and Bites',
          message:
              "Loved every bit of what i ordered, the food is delicious, the potions are great, couldn't even finish my food n the service was excellent! Would 100% recommend",
        ),
        ReviewResponseWidget(
          assetPngPath: meal3PngPath,
          name: "Sally's treats",
          message:
              'Fish was absolutely delicious! Came hot, large portion of the sides. Service is fast. The healthy drinks were a highlight for how affordable, amazing and huge they were.',
        ),
        ReviewResponseWidget(
          assetPngPath: profilePicPngPath,
          name: "Michelle's kitchen",
          message:
              'The lunch offered was great. The Fruit juice is a must try! The chicken wings were amazing as well. I enjoyed my food from this kitchen',
        ),
      ],
    );
  }
}

class ReviewResponseWidget extends StatelessWidget {
  final String name;
  final String message;
  final String assetPngPath;

  const ReviewResponseWidget({
    super.key,
    required this.name,
    required this.message,
    required this.assetPngPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(assetPngPath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          smallHorizontalSizedBox,
          SizedBox(
            width: MediaQuery.of(context).size.width - 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      name,
                      style: normalSize14Text(AppColors.blackTextColor),
                    ),
                    verySmallHorizontalSizedBox,
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(starIconSvgPath),
                        tinyHorizontalSizedBox,
                        SvgPicture.asset(starIconSvgPath),
                        tinyHorizontalSizedBox,
                        SvgPicture.asset(starIconSvgPath),
                        tinyHorizontalSizedBox,
                        SvgPicture.asset(starIconSvgPath),
                        tinyHorizontalSizedBox,
                        SvgPicture.asset(starIconSvgPath),
                      ],
                    )
                  ],
                ),
                verySmallVerticalSizedBox,
                Text(
                  message,
                  style: normalSize14Text(AppColors.greyTextColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
