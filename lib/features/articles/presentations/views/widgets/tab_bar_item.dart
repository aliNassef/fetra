 import 'package:fetra/features/articles/presentations/view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeTabItemCubitCubit, ChangeTabItemCubitState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 3.w),
          height: 40.h,
          decoration: BoxDecoration(
            color: context.read<ChangeTabItemCubitCubit>().curentIndex == index
                ? AppColors.primaryColor
                : const Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(
              'ali nassef',
              style:
                  context.read<ChangeTabItemCubitCubit>().curentIndex != index
                      ? AppStyles.textStyle16R
                          .copyWith(color: AppColors.tabBarLabelColor)
                      : AppStyles.textStyle16R,
            ),
          ),
        );
      },
    );
  }
}
