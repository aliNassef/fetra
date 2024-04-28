import 'package:dartz/dartz.dart';
import '../models/sign_up_model/sign_up_model.dart';

abstract class SignUpRepo {
  Future<Either<String, SignUpModel>> signUpUser({
    required String name,
    required String email,
    required String pass,
    required String type,
    required String age,
    required String phone,
  });
}
