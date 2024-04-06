import 'package:fetra/core/shared/functions/locale.dart';
import 'package:flutter/material.dart';
import 'article_item.dart';

class ArticlesViewBody extends StatefulWidget {
  const ArticlesViewBody({super.key, required this.controller});
  final TabController controller;

  @override
  State<ArticlesViewBody> createState() => _ArticlesViewBodyState();
}

class _ArticlesViewBodyState extends State<ArticlesViewBody> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: TabBarView(
        controller: widget.controller,
        children: List.generate(
          widget.controller.length,
          (index) => ListView.builder(
            itemBuilder: (context, index) => const ArticleItem(),
          ),
        ),
      ),
    );
  }
}
