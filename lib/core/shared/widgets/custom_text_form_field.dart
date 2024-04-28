import '../../utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.input,
    this.hint = '',
    this.backgroundColor = Colors.transparent,
    this.fillColor = false,
    this.borderRadius = 0,
    this.borderColor = Colors.transparent,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.obescureText = false,
    this.hintStyle,
    this.keyboardType,
  });
  final TextEditingController input;
  final String hint;
  final Color backgroundColor;
  final bool fillColor;
  final double borderRadius;
  final Color borderColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool obescureText;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ,
      cursorColor: AppColors.primarySwatchColor,
      obscureText: obescureText,
      controller: input,
      decoration: InputDecoration(
        focusColor: AppColors.primarySwatchColor,
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: hintStyle,
        fillColor: backgroundColor,
        filled: fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
