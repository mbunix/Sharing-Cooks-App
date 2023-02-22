import 'package:flutter/material.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, 
    this.buttonKey,
    this.onPressed,
    this.onLongPress,
    this.text,
    this.buttonColor,
    this.borderColor,
    this.textColor,
    this.customChild,
    this.customRadius,
    this.customPadding,
    this.customElevation,
    this.textStyle,
    this.width = double.infinity,
    this.height = 48,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Color? borderColor;
  final Color? buttonColor;
  final Key? buttonKey;
  final Widget? customChild;
  final double? customElevation;
  final EdgeInsets? customPadding;
  final double? customRadius;
  final VoidCallback? onLongPress;
  final String? text;
  final Color? textColor;
  final TextStyle? textStyle;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RawMaterialButton(
        key: buttonKey,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        elevation: customElevation ?? 0,
        onPressed: onPressed,
        onLongPress: onLongPress,
        padding: customPadding ?? const EdgeInsets.all(10),
        fillColor: buttonColor ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(customRadius ?? 5.0),
          side: BorderSide(
            color: borderColor ?? Theme.of(context).primaryColor,
            width: borderColor != null ? 1 : 0,
          ),
        ),
        child: customChild ??
            Text(
              text ?? '',
              style: textStyle ?? veryBoldSize15Text(textColor ?? Colors.white),
            ),
      ),
    );
  }
}
