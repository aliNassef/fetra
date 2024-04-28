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
      type: 'male',
      age: signUpAge.text,
      phone: signUpPhone.text,
    );

    response.fold(
      (l) => emit(FailureSignUp()),
      (r) => emit(SuccessSignUp()),
    );
  }
}
