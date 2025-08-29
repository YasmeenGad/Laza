// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:laza/core/errors/auth_failure.dart';
// import 'package:laza/core/errors/auth_failure_mapper.dart';
// import 'package:laza/core/errors/result.dart';
//
// Future<Result<T>> safeCall<T>(Future<T> Function() action) async {
//   try {
//     debugPrint('------------repo impl -------------');
//     final result = await action();
//     debugPrint('------------repo impl after action -------------');
//     return Success(result);
//
//   } on FirebaseAuthException catch (e) {
//     debugPrint('------------repo impl after FirebaseAuthException -------------');
//     return Error(AuthFailureMapper.mapFirebaseFailureFromCode(e.code));
//
//   } catch (e) {
//     debugPrint('------------repo impl after catch e -------------');
//     if (e.toString().contains('sign-in-cancelled')) {
//       return Error(const AuthCanceled());
//     }
//     debugPrint('------------repo impl after UnknownFailure -------------');
//     return Error(const UnknownFailure());
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:laza/core/errors/auth_failure.dart';
import 'package:laza/core/errors/auth_failure_mapper.dart';
import 'package:laza/core/errors/result.dart';

Future<Result<T>> safeCall<T>(Future<T> Function() action) async {
  try {
    debugPrint("------------ safeCall START ------------");
    final result = await action();
    debugPrint("------------ safeCall SUCCESS ------------");
    return Success(result);
  } on FirebaseAuthException catch (e) {
    debugPrint("FirebaseAuthException: ${e.code} - ${e.message}");
    return Error(AuthFailureMapper.mapFirebaseFailureFromCode(e.code));
  } on PlatformException catch (e) {
    debugPrint("PlatformException: ${e.code} - ${e.message}");
    switch (e.code) {
      case 'sign_in_canceled':
        return Error(const AuthCanceled());
      case 'network_error':
        return Error(const NetworkFailure());
      default:
        return Error(const UnknownFailure());
    }
  } catch (e, stack) {
    debugPrint("Unknown Exception: $e");
    debugPrint("StackTrace: $stack");

    if (e.toString().contains('sign-in-cancelled')) {
      return Error(const AuthCanceled());
    }
    return Error(const UnknownFailure());
  }
}
