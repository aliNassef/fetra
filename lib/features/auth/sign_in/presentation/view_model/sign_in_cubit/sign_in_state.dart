abstract class SignInState {}

final class SignInInitial extends SignInState {}

final class SuccessLogIn extends SignInState {}

final class FailureLogIn extends SignInState {}

final class LoadingLogIn extends SignInState {}
