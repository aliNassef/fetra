import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/core/cache/cache_helper.dart';

import '../../../../../../core/api/end_ponits.dart';
import '../../../data/repo/sign_up_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  GlobalKey formKeySignUp = GlobalKey<FormState>();
  TextEditingController signUpPass = TextEditingController();
  TextEditingController signUpname = TextEditingController();
  TextEditingController signUpPassConfig = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpAge = TextEditingController();
  TextEditingController signUpPhone = TextEditingController();
  TextEditingController signUpGender = TextEditingController();

  final SignUpRepo authRepo;
  signUp() async {
    emit(LoadingSignUp());
    final response = await authRepo.signUpUser(
      name: signUpname.text,
      email: signUpEmail.text,
      pass: signUpPass.text,
      type: signUpGender.text,
      age: signUpAge.text,
      phone: signUpPhone.text,
    );
    response.fold(
      (l) => emit(FailureSignUp(
        errMessage: l,
      )),
      (r) => emit(SuccessSignUp(
        message: r.message!,
      )),
    );
    getIt.get<CacheHelper>().saveData(key: ApiKey.name, value: signUpname.text);
    getIt
        .get<CacheHelper>()
        .saveData(key: ApiKey.password, value: signUpPass.text);
    getIt
        .get<CacheHelper>()
        .saveData(key: ApiKey.email, value: signUpEmail.text);
  }
}
