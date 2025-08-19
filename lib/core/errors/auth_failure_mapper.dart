import 'package:laza/core/errors/auth_failure.dart';

class AuthFailureMapper {
  static AuthFailure mapFirebaseFailureFromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const InvalidEmail();
      case 'user-not-found':
        return const UserNotFound();
      case 'email-already-in-use':
        return const EmailAlreadyInUse();
      case 'weak-password':
        return const WeakPassword();
      case 'network-request-failed':
        return const NetworkFailure();
      default:
        return const UnknownFailure();
    }
  }
}
