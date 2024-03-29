import 'package:dio/dio.dart';
import 'package:fetra/core/api/dio_consumer.dart';
import 'package:fetra/core/cache/cache_helper.dart';
import 'package:fetra/features/auth/sign_in/data/repo/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

setupGetIt() async {
  await CacheHelper().init();

  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      api: DioConsumer(
        dio: Dio(),
      ),
    ),
  );

  getIt.registerSingleton<CacheHelper>(
    CacheHelper(),
  );
}
