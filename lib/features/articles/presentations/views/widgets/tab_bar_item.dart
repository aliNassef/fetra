import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.title,
    required this.controller,
    required this.index,
  });
  final String title;
  final TabController controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      decoration: BoxDecoration(
        color: controller.index == index
            ? AppColors.primaryColor
            : const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Text(
          title,
          style: controller.index != index
              ? AppStyles.textStyle16R
                  .copyWith(color: AppColors.tabBarLabelColor)
              : AppStyles.textStyle16R,
        ),
      ),
    );
  }
}
