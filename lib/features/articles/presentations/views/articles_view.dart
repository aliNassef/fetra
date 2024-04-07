import 'package:fetra/features/articles/presentations/view_model/get_all_category_cubit/get_all_category_cubit.dart';
import 'package:fetra/features/articles/presentations/view_model/get_categry_by_id/get_category_by_id_cubit.dart';
import 'package:fetra/features/articles/presentations/views/widgets/article_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'widgets/build_custom_tab_bar_items.dart';
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
          const BuildCustomTabBarItems(),
          BlocBuilder<ArticleCubit, ArticleState>(
            builder: (context, state) {
              if (state is ArticleCategoryLoaded) {
                return BlocBuilder<GetCategoryByIdCubit, GetCategoryByIdState>(
                  builder: (context, state) {
                    if (state is GetCategoryByIdSuccess) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: state.model.data!.length,
                          itemBuilder: (context, index) {
                            return ArticleItem(
                              model: state.model.data![index],
                            );
                          },
                        ),
                      );
                    } else if (state is GetCategoryByIdFailure) {
                      return Center(child: Text(state.errMessage));
                    } else {
                      return Center(
                        child: SpinKitFadingCircle(
                          itemBuilder: (BuildContext context, int index) {
                            return const DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Color(0xffC4C4C4)),
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
          ),
        ],
      ),
    );
  }
}
