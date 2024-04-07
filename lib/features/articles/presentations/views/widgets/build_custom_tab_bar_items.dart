
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import '../../view_model/get_all_category_cubit/get_all_category_cubit.dart';
import '../../view_model/get_categry_by_id/get_category_by_id_cubit.dart';
import 'custom_tab_bar_items.dart';
import 'tab_bar_item.dart';

class BuildCustomTabBarItems extends StatelessWidget {
  const BuildCustomTabBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArticleCubit, ArticleState>(
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
    );
  }
}
