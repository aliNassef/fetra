import 'package:fetra/features/articles/data/models/tab_bar_model/datum.dart';
import 'package:fetra/features/articles/data/models/tab_bar_model/tab_bar_model.dart';
import 'package:fetra/features/articles/presentations/view_model/get_all_category_cubit/get_all_category_cubit.dart';
import 'package:fetra/features/articles/presentations/view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import 'package:fetra/features/articles/presentations/view_model/get_categry_by_id/get_category_by_id_cubit.dart';
import 'package:fetra/features/articles/presentations/views/widgets/article_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/shared/functions/locale.dart';
import 'widgets/custom_article_app_bar.dart';
import 'widgets/custom_tab_bar_items.dart';
import 'widgets/tab_bar_item.dart';

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
          BlocConsumer<ArticleCubit, ArticleState>(
            listener: (context, state) {
              if (state is ArticleCategoryLoaded) {
                context
                    .read<GetCategoryByIdCubit>()
                    .getCategoryById(id: state.model.data![0].id.toString());
              }
            },
            builder: (context, state) {
              if (state is ArticleCategoryLoaded) {
                return CustomTabBaritems(
                  model: state.model,
                );
              } else if (state is ArticleCategoryFailure) {
                return Center(
                  child: Text(state.errMessage),
                );
              } else {
                //    return const CircularProgressIndicator();
                return Directionality(
                  textDirection:
                      isArabic() ? TextDirection.rtl : TextDirection.ltr,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .060,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context
                                .read<ChangeTabItemCubitCubit>()
                                .changeTab(index);
                          },
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey[200]!,
                            highlightColor: Colors.grey,
                            child: TabBarItem(
                              index: index,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
            },
          ),
          BlocBuilder<ArticleCubit, ArticleState>(
            builder: (context, state) {
              if (state is ArticleCategoryLoaded) {
                return BlocBuilder<GetCategoryByIdCubit, GetCategoryByIdState>(
                  builder: (context, state) {
                    if (state is GetCategoryByIdSuccess) {
                      return Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return const ArticleItem();
                          },
                        ),
                      );
                    } else {
                      return Container(
                        color: Colors.amber,
                      );
                    }
                  },
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
