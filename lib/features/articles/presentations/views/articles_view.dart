import 'package:fetra/features/articles/presentations/view_model/cubit/article_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/article_view_body.dart';
import 'widgets/custom_article_app_bar.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(
      builder: (context, state) {
        if (state is ArticleCategoryLoaded) {
          controller = TabController(
            length: state.model.data!.length,
            vsync: this,
            animationDuration: const Duration(seconds: 2),
            initialIndex: 0,
          );
          return Scaffold(
            appBar: CustomArticleAppBar(
              controller: controller!,
            ),
            body: ArticlesViewBody(
              controller: controller!,
            ),
          );
        } else if (state is ArticleCategoryFailure) {
          return const Scaffold(
            body: Text('oops, try later'),
          );
        } else {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
