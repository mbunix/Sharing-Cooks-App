import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    super.key,
    this.textFieldKey,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.initialValue,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.obscureText = false,
    this.maxLength,
  });

  final Key? textFieldKey;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? initialValue;
  final AutovalidateMode autovalidateMode;
  final bool obscureText;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      key: textFieldKey,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.hintTextColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8.0),
      ),
      style: const TextStyle(color: AppColors.greyTextColor),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      maxLength: maxLength,
    );
  }
}

class CustomTextFieldWithBorder extends StatelessWidget {
  const CustomTextFieldWithBorder({
    super.key,
    this.textFieldKey,
    this.hintStyle,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.initialValue,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.obscureText = false,
    this.maxLength,
    this.suffixIcon,
    this.prefixIcon,
    this.borderColor,
    this.customFillColor,
    this.maxLines,
    this.minLines,
    this.borderWidth,
  });

  final Key? textFieldKey;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? initialValue;
  final AutovalidateMode autovalidateMode;
  final bool obscureText;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double? borderWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? borderColor;
  final Color? customFillColor;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      key: textFieldKey,
      maxLines: maxLines,
      minLines: minLines,
      initialValue: initialValue,
      decoration: InputDecoration(
        focusColor: AppColors.blackTextColor,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: AppColors.greyTextColor.withOpacity(0.3),
            width: borderWidth ?? 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: AppColors.greyTextColor,
          ),
        ),
        hintStyle: hintStyle ?? const TextStyle(color: AppColors.hintTextColor),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: customFillColor ?? Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8.0),
      ),
      style: const TextStyle(color: AppColors.greyTextColor),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      maxLength: maxLength,
    );
  }
}
