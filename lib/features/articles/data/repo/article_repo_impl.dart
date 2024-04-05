import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';
import 'package:fetra/features/articles/data/models/article_model/article_model.dart';
import 'package:fetra/features/articles/data/models/tab_bar_model/tab_bar_model.dart';
import 'package:fetra/features/articles/data/repo/article_repo.dart';

class ArticleRepoImpl extends ArticleRepo {
  final ApiConsumer api;

  ArticleRepoImpl({required this.api});
  @override
  Future<Either<ArticleModel, String>> getArticleData(
      {required String id}) async {
    try {
      final response = await api.get('${EndPoint.getAllVideosById}$id');
      var data = ArticleModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }

  @override
  Future<Either<TabBarModel, String>> getTabBarData() async {
    try {
      final response = await api.get(EndPoint.getAllCategoryBlogs);
      var data = TabBarModel.fromJson(response);
      return Left(data);
    } on ServerException catch (e) {
      return Right(e.errModel.message);
    }
  }
}
