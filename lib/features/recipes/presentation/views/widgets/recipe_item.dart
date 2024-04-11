import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    super.key,
    required this.radius,
    required this.borderColor,
    required this.backgroundColor,
    required this.title,
    required this.image,
    this.onTap,
  });
  final void Function()? onTap;
  final double radius;
  final Color borderColor;
  final Color backgroundColor;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 145.h,
        width: 134.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              title,
              style: AppStyles.titleAuth.copyWith(
                color: const Color(0xff4F4F4F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
