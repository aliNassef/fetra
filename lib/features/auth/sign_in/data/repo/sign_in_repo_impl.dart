import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/cache/cache_helper.dart';
import 'package:fetra/core/errors/exceptions.dart';
import 'package:fetra/features/auth/sign_in/data/models/sign_in_model.dart';

import 'sign_in_repo.dart';

class SignInRepoImpl extends SignInRepo {
  final ApiConsumer api;

  SignInRepoImpl({required this.api});

  @override
  Future<Either<String, SignInModel>> loginUser(
      {required String email,
      required String password,
      required String accountType}) async {
    try {
      final response = await api.post(EndPoint.userLogin, data: {
        ApiKey.email: email,
        ApiKey.password: password,
        ApiKey.typeAccount: accountType,
      });
      var data = SignInModel.fromJson(response);
      //  var userId = JwtDecoder.decode(data.data!.token!);

      CacheHelper().saveData(
        key: ApiKey.token,
        value: data.data!.token,
      );
      // CacheHelper().saveData(
      //   key: ApiKey.id,
      //   value: userId[ApiKey.id],
      // );

      return Right(data);
    } on ServerException catch (e) {
      return Left('there is an Error ${e.toString()}');
    }
  }
}
