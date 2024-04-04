import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit() : super(ArticleInitial());
  static ArticleCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  changeScreen(index) {
    currentIndex = index;
    emit(ChangeScreenState());
  }
}
