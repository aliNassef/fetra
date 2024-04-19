import 'package:fetra/features/articles/data/models/tab_bar_model/tab_bar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import '../../view_model/get_categry_by_id/get_category_by_id_cubit.dart';
import 'tab_bar_item.dart';

class CustomTabBaritems extends StatelessWidget {
  const CustomTabBaritems({super.key, required this.model});
  final TabBarModel model;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .060,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: model.data!.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<ChangeTabItemCubitCubit>().changeTab(index);
                context
                    .read<GetCategoryByIdCubit>()
                    .getCategoryById(id: model.data![index].id.toString());
              },
              child: TabBarItem(
                model: model,
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
