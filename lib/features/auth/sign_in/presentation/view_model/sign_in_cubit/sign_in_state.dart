abstract class SignInState {}

final class SignInInitial extends SignInState {}

final class SuccessLogIn extends SignInState {
  final String message;

  SuccessLogIn({required this.message});
}

final class FailureLogIn extends SignInState {
  final String errMessage;

  FailureLogIn({required this.errMessage});
}

final class LoadingLogIn extends SignInState {}
