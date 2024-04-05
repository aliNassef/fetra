import 'package:fetra/features/articles/data/repo/article_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit(this.articleRepo) : super(ArticleInitial());
  final ArticleRepo articleRepo;

  static ArticleCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  changeScreen(index) {
    currentIndex = index;
    emit(ChangeScreenState());
  }

  getArticleCategory() async {
    emit(ArticleCategoryLoading());
    var data = await articleRepo.getTabBarData();
    data.fold(
      (l) => emit(
        ArticleCategoryLoaded(),
      ),
      (r) => emit(
        ArticleCategoryFailure(),
      ),
    );
  }
  
}
