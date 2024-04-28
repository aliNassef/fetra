import 'package:dartz/dartz.dart';
import '../models/article_model/article_model.dart';
import '../models/tab_bar_model/tab_bar_model.dart';

abstract class ArticleRepo {
  Future<Either<TabBarModel, String>> getTabBarData();
  Future<Either<ArticleModel, String>> getArticleData({required String id});
}
