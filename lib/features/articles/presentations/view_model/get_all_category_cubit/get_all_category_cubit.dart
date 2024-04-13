import 'package:fetra/features/articles/data/models/tab_bar_model/tab_bar_model.dart';
import 'package:fetra/features/articles/data/repo/article_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_category_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit(this.articleRepo) : super(ArticleInitial());
  final ArticleRepo articleRepo;
  static ArticleCubit get(context) => BlocProvider.of(context);

  getArticleCategory() async {
    emit(ArticleCategoryLoading());
    var data = await articleRepo.getTabBarData();
    data.fold(
      (l) {
        emit(
          ArticleCategoryLoaded(model: l),
        );
      },
      (r) => emit(
        ArticleCategoryFailure(errMessage: r),
      ),
    );
  }
}
