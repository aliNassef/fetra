import 'package:dartz/dartz.dart';
import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_ponits.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/article_model/article_model.dart';
import '../models/tab_bar_model/tab_bar_model.dart';
import 'article_repo.dart';

class ArticleRepoImpl extends ArticleRepo {
  final ApiConsumer api;

  ArticleRepoImpl({required this.api});
  @override
  Future<Either<ArticleModel, String>> getArticleData(
      {required String id}) async {
    try {
      final response = await api.get('${EndPoint.getBlogsWithId}$id');
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
