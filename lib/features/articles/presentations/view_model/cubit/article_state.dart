part of 'article_cubit.dart';

sealed class ArticleState extends Equatable {
  const ArticleState();

  @override
  List<Object> get props => [];
}

final class ArticleInitial extends ArticleState {}

final class ChangeScreenState extends ArticleState {}

final class ArticleCategoryLoading extends ArticleState {}

final class ArticleCategoryLoaded extends ArticleState {}

final class ArticleCategoryFailure extends ArticleState {}
