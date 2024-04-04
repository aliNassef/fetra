import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/features/articles/presentations/view_model/cubit/article_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.title,
    required this.index,
  });
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      width: 80.w,
      decoration: BoxDecoration(
        color: index == ArticleCubit.get(context).currentIndex
            ? AppColors.primaryColor
            : const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: index != ArticleCubit.get(context).currentIndex
            ? AppStyles.textStyle16R.copyWith(color: AppColors.tabBarLabelColor)
            : AppStyles.textStyle16R,
      ),
    );
  }
}
