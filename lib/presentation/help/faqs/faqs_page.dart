import 'package:flutter/material.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/expandable_card.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> faqsWidgetList = <Widget>[];
    if (faqsWidgetList.isEmpty) {
      for (int i = 0; i < faqs.length; i++) {
        faqsWidgetList.add(
          ExpandableCard(
            collapsedChild: Container(
              width: MediaQuery.of(context).size.width - 48,
              padding: i != 0 ? const EdgeInsets.only(top: 16) : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '${i + 1}. ${faqs[i]['question'] ?? ''}',
                      style: veryBoldSize14Text(AppColors.blackTextColor),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.greyTextColor,
                  ),
                ],
              ),
            ),
            expandedChild: Container(
              width: MediaQuery.of(context).size.width - 48,
              padding: i != 0 ? const EdgeInsets.only(top: 30) : null,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '${i + 1}. ${faqs[i]['question'] ?? ''}',
                          style: veryBoldSize14Text(AppColors.blackTextColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up,
                        color: AppColors.greyTextColor,
                      ),
                    ],
                  ),
                  smallVerticalSizedBox,
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          faqs[i]['answer'] ?? '',
                          style: boldSize14Text(AppColors.greyTextColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

    return Scaffold(
      appBar: const CustomAppBar(
        title: frequentlyAskedQuestionsString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ...faqsWidgetList,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> faqs = <Map<String, String>>[
  <String, String>{
    'question': 'Can a client reject after eating or tasting?',
    'answer':
        'No. The client should not be allowed to eat or taste the meal before accepting the delivery. Allow the client to view/see the meal but do not hand over the meal until the client accepts delivery.',
  },
  <String, String>{
    'question':
        'What happens when a client does not respond to my delivery request?',
    'answer': 'You will be paid in full',
  },
  <String, String>{
    'question': 'What if a client claims that I have not delivered in time?',
    'answer': 'We will call both of you to resolve the conflict',
  },
  <String, String>{
    'question': 'What happens when a client rejects my delivery?',
    'answer':
        'The client must specify the reason for rejecting the delivery and you will see the reason. You can either accept or reject by filling in your reason for rejection. Attach a photo of the food and packaging/dishes. The issue will be investigated and a decision will be made about the payment',
  },
];
