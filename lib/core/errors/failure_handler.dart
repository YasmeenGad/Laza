import 'package:laza/core/errors/failure.dart';

import 'auth_failure.dart';

class FailureHandler {
  static String mapFailureToMessage(Failure failure) {
    if (failure is AuthFailure) return _mapAuthFailureToMessage(failure);
    return 'UnExpected failure, please try again';
  }

  static String _mapAuthFailureToMessage(AuthFailure failure) {
    switch (failure.runtimeType) {
      case InvalidEmail _:
        return "The email address is invalid.";
      case UserNotFound _:
        return "No user found with this email.";
      case EmailAlreadyInUse _:
        return "This email is already registered.";
      case WeakPassword _:
        return "Password is too weak.";
      case NetworkFailure _:
        return "No internet connection.";
      case AuthCanceled _:
        return "Sign-in was canceled.";
      case AuthServerFailure _:
        return "Server error, please try again.";
      case UnknownFailure _:
      default:
        return "Something went wrong. Please try again later.";
    }
  }
}
