import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import '../../../../articles/presentations/view_model/cubit/article_cubit.dart';
import '../../../../articles/presentations/views/articles_view.dart';
import 'home_item.dart';

class CustomListOfHomeViewItems extends StatelessWidget {
  const CustomListOfHomeViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: HomeItem(
                    image: AppImages.papers,
                    title: S.of(context).articles,
                    radius: 18,
                    borderColor: const Color(0xB253B175),
                    backgroundColor: const Color(0xffEEF7F1),
                    onTap: () => PersistentNavBarNavigator.pushNewScreen(
                      customPageRoute: MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => ArticleCubit(),
                          child: const ArticlesView(),
                        ),
                      ),
                      context,
                      screen: const ArticlesView(),
                      pageTransitionAnimation: PageTransitionAnimation.slideUp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: HomeItem(
                    image: AppImages.calc,
                    title: S.of(context).calc_fats,
                    radius: 18,
                    borderColor: const Color(0xffF7A593),
                    backgroundColor: const Color(0xffFEF6ED),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: HomeItem(
                    image: AppImages.creator,
                    title: S.of(context).videos,
                    radius: 18,
                    borderColor: const Color(0xffF7A593),
                    backgroundColor: const Color(0xffFDE8E4),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: HomeItem(
                    image: AppImages.trainers,
                    title: S.of(context).coaches,
                    radius: 18,
                    borderColor: const Color(0xffD3B0E0),
                    backgroundColor: const Color(0xffF4EBF7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: HomeItem(
                    image: AppImages.meals,
                    title: S.of(context).recipes,
                    radius: 18,
                    borderColor: const Color(0xB2F8A44C),
                    backgroundColor: const Color(0xffFEF6ED),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: HomeItem(
                    image: AppImages.calc2,
                    title: S.of(context).calc_fats_paid,
                    radius: 18,
                    borderColor: const Color(0xffB7DFF5),
                    backgroundColor: const Color(0xffE6F0F5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
