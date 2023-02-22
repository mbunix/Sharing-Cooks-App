import 'package:flutter/material.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class AuthScaffold extends StatelessWidget {
  final String? title;
  final String? message;
  final Widget? body;
  final bool showBackButton;
  final Widget? actionDescription;
  final Widget actionButton;

  const AuthScaffold({
    Key? key,
    this.title,
    this.message,
    this.body,
    this.actionDescription,
    required this.actionButton,
    this.showBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    mediumVerticalSizedBox,
                    if (showBackButton)
                      InkWell(
                          onTap: () {
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
                          },
                          child: const Icon(Icons.arrow_back),),
                    mediumVerticalSizedBox,
                    Text(
                      title ?? '',
                      style: veryBoldSize22Text(),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      message ?? '',
                      style: normalSize16Text(AppColors.greyTextColor),
                    ),
                    veryLargeVerticalSizedBox,
                    if (body != null) body!,
                    veryLargeVerticalSizedBox,
                    actionButton,
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      if (actionDescription != null) actionDescription!,
                      veryLargeVerticalSizedBox,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
