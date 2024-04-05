import 'package:fetra/core/shared/functions/locale.dart';
import 'package:flutter/material.dart';
import 'article_item.dart';

class ArticlesViewBody extends StatelessWidget {
  const ArticlesViewBody({super.key, required this.controller});
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: TabBarView(
        controller: controller,
        children: List.generate(
          controller.length,
          (index) => ListView.builder(
            itemBuilder: (context, index) => const ArticleItem(),
          ),
        ),
      ),
    );
  }
}
