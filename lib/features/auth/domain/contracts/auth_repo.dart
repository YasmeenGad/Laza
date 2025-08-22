import 'package:laza/core/errors/result.dart';
import 'package:laza/features/auth/domain/entities/google_user_entity.dart';

abstract class AuthRepo {
  Future<Result<GoogleUserEntity>> signInWithGoogle();
}
