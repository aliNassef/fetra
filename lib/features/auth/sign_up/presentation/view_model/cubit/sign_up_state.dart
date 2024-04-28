abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SuccessSignUp extends SignUpState {
  final String message;

  SuccessSignUp({required this.message});
}

final class FailureSignUp extends SignUpState {
  final String errMessage;

  FailureSignUp({required this.errMessage});
}

final class LoadingSignUp extends SignUpState {}
