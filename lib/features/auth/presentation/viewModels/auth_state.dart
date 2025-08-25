part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

///**  Sign in with google states **///

final class SignInWithGoogleLoading extends AuthState {}

final class SignInWithGoogleSuccess extends AuthState {
  final GoogleUserEntity user;

  SignInWithGoogleSuccess(this.user);
}

final class SignInWithGoogleFailure extends AuthState {
  final String failureMessage;

  SignInWithGoogleFailure(this.failureMessage);
}
