import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/build_custom_list_view_of_articles.dart';
import 'widgets/build_custom_tab_bar_items.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).articles,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 21.h,
          ),
          const BuildCustomTabBarItems(),
          const BuildCustomListViewOfArticles(),
        ],
      ),
    );
  }
}
