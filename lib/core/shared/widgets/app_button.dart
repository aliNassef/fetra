import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    required this.text,
    this.borderColor,
  });
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Widget text;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor ?? Colors.transparent)),
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        height: 54.h,
        child: Center(child: text),
      ),
    );
  }
}
