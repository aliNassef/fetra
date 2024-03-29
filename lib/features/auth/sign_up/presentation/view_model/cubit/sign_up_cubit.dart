import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../sign_in/data/repo/auth_repo.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  GlobalKey formKeySignUp = GlobalKey<FormState>();
  TextEditingController signUpPass = TextEditingController();
  TextEditingController signUpname = TextEditingController();
  TextEditingController signUpPassConfig = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();

  final AuthRepo authRepo;
  signIn() async {
    emit(LoadingSignUp());
    final data = await authRepo.loginUser(
      email: signUpEmail.text,
      password: signUpPass.text,
      accountType: 'gmail',
    );
    data.fold(
      (l) => emit(FailureSignUp()),
      (r) => emit(SuccessSignUp()),
    );
  }
}
