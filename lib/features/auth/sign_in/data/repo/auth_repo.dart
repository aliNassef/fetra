import 'package:dartz/dartz.dart';

import '../models/sign_in_model.dart';

abstract class AuthRepo {
  Future<Either<String, SignInModel>> loginUser({
    required String email,
    required String password,
    required String accountType,
  });
}
