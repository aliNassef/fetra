import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    required this.text,
    this.padding,
    this.borderColor,
    this.radius = 10,
    this.margin = const EdgeInsets.symmetric(horizontal: 20),
  });
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Widget text;
  final Color? borderColor;
  final double radius;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: borderColor ?? Colors.transparent)),
        margin: margin,
        height: 54.h,
        child: Center(child: text),
      ),
    );
  }
}
