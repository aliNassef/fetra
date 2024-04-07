import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/features/articles/presentations/view_model/change_tab_item_cubit/change_tab_item_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_article_app_bar.dart';
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
              child: CustomTabBarItem(
                index: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
