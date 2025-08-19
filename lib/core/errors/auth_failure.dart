import 'package:laza/core/errors/failure.dart';

abstract class AuthFailure extends Failure {
  const AuthFailure(super.message);
}

class InvalidEmail extends AuthFailure {
  const InvalidEmail() : super('Invalid email');
}

class WeakPassword extends AuthFailure {
  const WeakPassword() : super('Weak password');
}

class EmailAlreadyInUse extends AuthFailure {
  const EmailAlreadyInUse() : super('Email already in use');
}

class UserNotFound extends AuthFailure {
  const UserNotFound() : super('User not found');
}

class NetworkFailure extends AuthFailure {
  const NetworkFailure() : super('Not connected to internet');
}

class AuthServerFailure extends AuthFailure {
  const AuthServerFailure() : super('server failure, please try again');
}

class UnknownFailure extends AuthFailure {
  const UnknownFailure() : super('unexpected failure, please try again');
}
