import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/features/articles/presentations/view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import 'package:fetra/features/articles/presentations/views/widgets/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'widgets/custom_article_app_bar.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomArticleAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 21.h,
          ),
          const CustomTabBaritems()
        ],
      ),
    );
  }
}

class CustomTabBaritems extends StatelessWidget {
  const CustomTabBaritems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeTabItemCubitCubit, ChangeTabItemCubitState>(
      builder: (context, state) {
        return Directionality(
          textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .060,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      context.read<ChangeTabItemCubitCubit>().changeTab(index);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 3.w),
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: context
                                    .read<ChangeTabItemCubitCubit>()
                                    .curentIndex ==
                                index
                            ? AppColors.primaryColor
                            : const Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Text(
                          'ali nassef',
                          style: context
                                      .read<ChangeTabItemCubitCubit>()
                                      .curentIndex !=
                                  index
                              ? AppStyles.textStyle16R
                                  .copyWith(color: AppColors.tabBarLabelColor)
                              : AppStyles.textStyle16R,
                        ),
                      ),
                    ));
              },
            ),
          ),
        );
      },
    );
  }
}
