import 'package:dartz/dartz.dart';
import 'package:fetra/core/api/api_consumer.dart';
import 'package:fetra/core/api/end_ponits.dart';
import 'package:fetra/core/errors/exceptions.dart';
import 'package:fetra/features/auth/sign_up/data/models/sign_up_model/sign_up_model.dart';
import 'package:fetra/features/auth/sign_up/data/repo/sign_up_repo.dart';

class SignUpRepoImpl extends SignUpRepo {
  final ApiConsumer api;

  SignUpRepoImpl({required this.api});
  @override
  Future<Either<String, SignUpModel>> signUpUser({
    required String name,
    required String email,
    required String pass,
    required String type,
    required String age,
    required String phone,
  }) async {
    try {
      final response = await api.post(EndPoint.userRegister, data: {
        ApiKey.name: name,
        ApiKey.email: email,
        ApiKey.password: pass,
        ApiKey.phone: phone,
        ApiKey.age: age,
        ApiKey.type: type,
        ApiKey.typeAccount: 'email'
      });

      var data = SignUpModel.fromJson(response);
      return Right(data);
    } on ServerException catch (e) {
      return Left(e.errModel.message);
    }
  }
}
