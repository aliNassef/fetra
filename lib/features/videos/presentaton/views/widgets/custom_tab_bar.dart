import '../../../data/models/video_categories.dart';
import '../../view_model/get_video_by_id_cubit/get_video_by_id_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../view_model/change_tab_cubit/change_tab_bar_item_cubit.dart';

class CutomTabBar extends StatelessWidget {
  const CutomTabBar({super.key, required this.instance});
  final VideoCategoriesModel instance;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeTabBarItemCubit, ChangeTabBarItemState>(
      builder: (context, state) {
        return SizedBox(
          height: 40.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: instance.data!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<ChangeTabBarItemCubit>().changeTabIndex(index);
                  context.read<GetVideoByIdCubit>().getVideoById(
                        type: instance.data![index].name.toString(),
                      );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.w),
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  alignment: Alignment.center,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: context.read<ChangeTabBarItemCubit>().currentIndex ==
                            index
                        ? AppColors.primaryColor
                        : const Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    instance.data![index].name!,
                    style: context.read<ChangeTabBarItemCubit>().currentIndex ==
                            index
                        ? AppStyles.textStyle16R
                        : AppStyles.textStyle16R.copyWith(
                            color: const Color(0xff9A9999),
                          ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
