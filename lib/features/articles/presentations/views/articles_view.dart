import 'package:fetra/features/articles/presentations/view_model/cubit/article_cubit.dart';
import 'package:flutter/material.dart';
import 'widgets/article_view_body.dart';
import 'widgets/custom_article_app_bar.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    setUpController();
  }

  setUpController() {
    controller.addListener(() {
      setState(() {
        ArticleCubit.get(context).changeScreen(controller.index);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomArticleAppBar(
        controller: controller,
      ),
      body: ArticlesViewBody(
        controller: controller,
      ),
    );
  }
}
