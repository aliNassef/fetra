import 'package:fetra/features/auth/sign_in/data/repo/sign_in_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();

  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPass = TextEditingController();

  final SignInRepo authRepo;
  signIn() async {
    emit(LoadingLogIn());
    final data = await authRepo.loginUser(
      email: signInEmail.text,
      password: signInPass.text,
      accountType: 'email',
    );
    data.fold(
      (l) => emit(
        FailureLogIn(
          errMessage: l,
        ),
      ),
      (r) => emit(
        SuccessLogIn(
          message: r.message!,
        ),
      ),
    );
  }
}
