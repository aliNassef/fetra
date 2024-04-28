import '../../../data/models/article_model/article_model.dart';
import '../../../data/repo/article_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_category_by_id_state.dart';

class GetCategoryByIdCubit extends Cubit<GetCategoryByIdState> {
  GetCategoryByIdCubit(this.articleRepo) : super(GetCategoryByIdInitial());
  final ArticleRepo articleRepo;

  getCategoryById({required String id}) async {
    emit(GetCategoryByIdLoding());
    final data = await articleRepo.getArticleData(id: id);
    data.fold(
      (l) => emit(
        GetCategoryByIdSuccess(model: l),
      ),
      (r) => emit(
        GetCategoryByIdFailure(errMessage: r),
      ),
    );
  }
}
