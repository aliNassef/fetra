import 'package:dio/dio.dart';
import 'package:fetra/core/api/dio_consumer.dart';
import 'package:fetra/core/cache/cache_helper.dart';
import 'package:fetra/features/articles/data/repo/article_repo_impl.dart';
import 'package:fetra/features/auth/sign_in/data/repo/sign_in_repo_impl.dart';
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
  getIt.registerSingleton<CacheHelper>(
    CacheHelper(),
  );
}
