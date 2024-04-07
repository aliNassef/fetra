part of 'get_category_by_id_cubit.dart';

sealed class GetCategoryByIdState extends Equatable {
  const GetCategoryByIdState();

  @override
  List<Object> get props => [];
}

final class GetCategoryByIdInitial extends GetCategoryByIdState {}

final class GetCategoryByIdSuccess extends GetCategoryByIdState {
  final ArticleModel model;

  const GetCategoryByIdSuccess({required this.model});
}

final class GetCategoryByIdFailure extends GetCategoryByIdState {}

final class GetCategoryByIdLoding extends GetCategoryByIdState {}
