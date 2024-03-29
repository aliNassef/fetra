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
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obescureText,
      controller: input,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
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
