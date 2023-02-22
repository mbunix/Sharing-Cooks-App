import 'package:flutter/material.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;
  final Widget? leadingWidget;
  final List<Widget>? actions;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    this.title,
    this.leadingWidget,
    this.actions,
    this.showBackButton = true,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      actions: actions,
      leading: showBackButton
          ? InkWell(
              onTap: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.blackTextColor,
              ),
            )
          : leadingWidget,
      backgroundColor: AppColors.pureWhiteColor,
      elevation: 0,
      title: (title?.isNotEmpty ?? false)
          ? Text(
              title!,
              style: veryBoldSize20Text(AppColors.blackTextColor),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
