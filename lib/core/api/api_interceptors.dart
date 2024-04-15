import 'package:dio/dio.dart';

import '../cache/cache_helper.dart';
import 'end_ponits.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'Bearer ${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    options.headers['Authorization'] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'Bearer ${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    options.headers['Accept-Language'] = 'ar';
    super.onRequest(options, handler);
  }
}
