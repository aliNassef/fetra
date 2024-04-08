import 'package:fetra/core/utils/app_router.dart';
import 'package:fetra/features/articles/presentations/views/widgets/article_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import '../../view_model/get_all_category_cubit/get_all_category_cubit.dart';
import '../../view_model/get_categry_by_id/get_category_by_id_cubit.dart';

class BuildCustomListViewOfArticles extends StatelessWidget {
  const BuildCustomListViewOfArticles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(
      builder: (context, state) {
        if (state is ArticleCategoryLoaded) {
          return BlocBuilder<GetCategoryByIdCubit, GetCategoryByIdState>(
            builder: (context, state) {
              if (state is GetCategoryByIdSuccess) {
                return Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                      itemCount: state.model.data!.length,
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
                              child: GestureDetector(
                                onTap: () {
                                  // PersistentNavBarNavigator.pushNewScreen(
                                  //     context,
                                  //     pageTransitionAnimation:
                                  //         PageTransitionAnimation.slideUp,
                                  //     customPageRoute: MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const ArticleDetailsView(),
                                  //     ),
                                  //     screen: const ArticleDetailsView());
                                  GoRouter.of(context)
                                      .push(AppRouter.articleDetailsView , extra: state.model.data![index]);
                                },
                                child: ArticleItem(
                                  model: state.model.data![index],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              } else if (state is GetCategoryByIdFailure) {
                return Center(child: Text(state.errMessage));
              } else {
                return Center(
                  child: SpinKitFadingCircle(
                    itemBuilder: (BuildContext context, int index) {
                      return const DecoratedBox(
                        decoration: BoxDecoration(color: Color(0xffC4C4C4)),
                      );
                    },
                  ),
                );
              }
            },
          );
        } else if (state is ArticleCategoryFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return Center(
            child: SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(color: Color(0xffC4C4C4)),
                );
              },
            ),
          );
        }
      },
    );
  }
}
