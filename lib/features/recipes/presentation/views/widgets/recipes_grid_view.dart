import 'package:fetra/features/recipes/presentation/views/recipes_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
 import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../../../core/utils/app_images.dart';
import 'recipe_item.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 22.w,
              mainAxisSpacing: 24.h,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: const Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    flipAxis: FlipAxis.y,
                    child: RecipeItem(
                      radius: 18.r,
                      image: AppImages.calc,
                      backgroundColor: _recipeBackGroundItemColor(index),
                      borderColor: _recipeBorderItemColor(index),
                      title: 'ali',
                      onTap: () {
                        PersistentNavBarNavigator.pushDynamicScreen(
                          context,
                          screen: MaterialPageRoute(
                            builder: (context) {
                              return Builder(
                                builder: (context) =>
                                    const RecipesDetailsView(),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _recipeBackGroundItemColor(int index) {
    int num = index % 6;
    switch (num) {
      case 0:
        return const Color(0xffFEF6ED);
      case 1:
        return const Color(0xffEEF7F1);
      case 2:
        return const Color(0xffF4EBF7);
      case 3:
        return const Color(0xffFDE8E4);
      case 4:
        return const Color(0xffE6F0F5);
      case 5:
        return const Color(0xffFEF6ED);
    }
  }

  _recipeBorderItemColor(int index) {
    int num = index % 6;
    switch (num) {
      case 0:
        return const Color(0xffF7A593);
      case 1:
        return const Color(0xB253B175);
      case 2:
        return const Color(0xffD3B0E0);
      case 3:
        return const Color(0xffF7A593);
      case 4:
        return const Color(0xffB7DFF5);
      case 5:
        return const Color(0xB2F8A44C);
    }
  }
}
/*
  i =  0 - 5
  0 1 2 3 4 5
  6 7 8 9 10 11
  12 13 14 15 16 17
  if index % {6 , 7 , 8 , 9 , 10 , 11} == {0 , 1 , 2 , 3 , 4 , 5}
 */