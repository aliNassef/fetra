import 'package:dio/dio.dart';
import 'package:fetra/features/profile/data/repo/profile_repo_impl.dart';
import '../../features/fat_calc/data/repo/fat_calc_repo_impl.dart';
import '../../features/videos/data/repo/video_repo_impl.dart';
import 'dio_consumer.dart';
import '../cache/cache_helper.dart';
import '../../features/articles/data/repo/article_repo_impl.dart';
import '../../features/auth/sign_in/data/repo/sign_in_repo_impl.dart';
import '../../features/recipes/data/repo/recipe_repo_impl.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/sign_up/data/repo/sign_up_repo_impl.dart';

GetIt getIt = GetIt.instance;

setupGetIt() async {
  await CacheHelper().init();
  getIt.registerSingleton<DioConsumer>(
    DioConsumer(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<SignInRepoImpl>(
    SignInRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );

  getIt.registerSingleton<SignUpRepoImpl>(SignUpRepoImpl(
    api: getIt.get<DioConsumer>(),
  ));
  getIt.registerSingleton<ArticleRepoImpl>(
    ArticleRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );
  getIt.registerSingleton<RecipeRepoImpl>(
    RecipeRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );

  getIt.registerSingleton<CacheHelper>(
    CacheHelper(),
  );
  getIt.registerSingleton<FatCalcRepoImpl>(
    FatCalcRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );
  getIt.registerSingleton<VideoRepoImpl>(
    VideoRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );
  getIt.registerSingleton<ProfileRepoImpl>(
    ProfileRepoImpl(
      api: getIt.get<DioConsumer>(),
    ),
  );
}
