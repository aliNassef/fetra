import '../../../../../core/shared/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
import '../../../../../core/shared/functions/locale.dart';
 import '../../view_model/get_all_category_cubit/get_all_category_cubit.dart';
import '../../view_model/get_categry_by_id/get_category_by_id_cubit.dart';
import 'custom_tab_bar_items.dart';
 
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
              height: 50.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Skelton(
                      height: 50.h,
                      width: 100.w,
                      radius: 10.r,
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
