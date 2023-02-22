import 'package:flutter/material.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/reviews/widgets/comments_list_widget.dart';
import 'package:sharing_cooks/presentation/reviews/widgets/summary_container.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My 29 $reviewsString',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(

              children: <Widget>[
                // mediumVerticalSizedBox,
                // Text(
                //   summaryString,
                //   style: normalSize16Text(AppColors.blackTextColor),
                // ),
                // mediumVerticalSizedBox,
                const SummaryContainer(),
                // mediumVerticalSizedBox,
                // InkWell(
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(vertical: 12.0),
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(2),
                //       border: Border.all(
                //         color: AppColors.blackTextColor.withOpacity(0.4),
                //       ),
                //     ),
                //     child: Center(
                //       child: Text(
                //         writeAReviewString,
                //         style: normalSize16Text(AppColors.blackTextColor),
                //       ),
                //     ),
                //   ),
                // ),
                mediumVerticalSizedBox,
                const CommentsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
