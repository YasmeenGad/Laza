import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/errors/auth_failure.dart';
import 'package:laza/core/errors/auth_failure_mapper.dart';
import 'package:laza/core/errors/result.dart';

Future<Result<T>> safeCall<T>(Future<T> Function() action) async {
  try {
    final result = await action();
    return Success(result);
  } on FirebaseAuthException catch (e) {
    return Error(AuthFailureMapper.mapFirebaseFailureFromCode(e.code));
  } catch (e) {
    if (e.toString().contains('sign-in-cancelled')) {
      return Error(const AuthCanceled());
    }
    return Error(const UnknownFailure());
  }
}
