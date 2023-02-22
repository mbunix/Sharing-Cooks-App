import 'package:flutter/material.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/expandable_card.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> termsWidgetList = <Widget>[];
    if (termsWidgetList.isEmpty) {
      for (int i = 0; i < terms.length; i++) {
        termsWidgetList.add(
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
                      terms[i]['title'] ?? '',
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
                          terms[i]['title'] ?? '',
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
                          terms[i]['desc'] ?? '',
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
        title: privacyPolicyString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ...termsWidgetList,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> terms = <Map<String, String>>[
  <String, String>{
    'title': 'A. Scope of License',
    'desc':
        'Licensor grants to you a nontransferable license to use the Licensed Application on any Apple-branded products that you own or control and as permitted by the Usage Rules. The terms of this Standard EULA will govern any content, materials, or services accessible from or purchased within the Licensed Application as well as upgrades provided by Licensor that replace or supplement the original Licensed Application, unless such upgrade is accompanied by a Custom EULA. Except as provided in the Usage Rules, you may not distribute or make the Licensed Application available over a network where it could be used by multiple devices at the same time. You may not transfer, redistribute or sublicense the Licensed Application and, if you sell your Apple Device to a third party, you must remove the Licensed Application from the Apple Device before doing so. You may not copy (except as permitted by this license and the Usage Rules), reverse-engineer, disassemble, attempt to derive the source code of, modify, or create derivative works of the Licensed Application, any updates, or any part thereof (except as and only to the extent that any foregoing restriction is prohibited by applicable law or to the extent as may be permitted by the licensing terms governing use of any open-sourced components included with the Licensed Application).',
  },
  <String, String>{
    'title': 'B. Consent to Use of Data',
    'desc':
        'You agree that Licensor may collect and use technical data and related information—including but not limited to technical information about your device, system and application software, and peripherals—that is gathered periodically to facilitate the provision of software updates, product support, and other services to you (if any) related to the Licensed Application. Licensor may use this information, as long as it is in a form that does not personally identify you, to improve its products or to provide services or technologies to you.',
  },
  <String, String>{
    'title': 'C. Termination',
    'desc':
        ' Except as provided in the Usage Rules, you may not distribute or make the Licensed Application available over a network where it could be used by multiple devices at the same time. You may not transfer, redistribute or sublicense the Licensed Application and, if you sell your Apple Device to a third party, you must remove the Licensed Application from the Apple Device before doing so. You may not copy (except as permitted by this license and the Usage Rules), reverse-engineer, disassemble, attempt to derive the source code of, modify, or create derivative works of the Licensed Application, any updates, or any part thereof (except as and only to the extent that any foregoing restriction is prohibited by applicable law or to the extent as may be permitted by the licensing terms governing use of any open-sourced components included with the Licensed Application).',
  },
  <String, String>{
    'title': 'D. External Services',
    'desc':
        'You agree that Licensor may collect and use technical data and related information—including but not limited to technical information about your device, system and application software, and peripherals—that is gathered periodically to facilitate the provision of software updates, product support, and other services to you (if any) related to the Licensed Application. Licensor may use this information, as long as it is in a form that does not personally identify you, to improve its products or to provide services or technologies to you.',
  },
];
