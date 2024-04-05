import 'package:dartz/dartz.dart';
import 'package:fetra/features/articles/data/models/article_model/article_model.dart';
import 'package:fetra/features/articles/data/models/tab_bar_model/tab_bar_model.dart';

abstract class ArticleRepo {
  Future<Either<TabBarModel, String>> getTabBarData();
  Future<Either<ArticleModel, String>> getArticleData({required String id});
}
