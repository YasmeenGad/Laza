import 'package:laza/features/auth/domain/entities/google_user_entity.dart';

abstract class AuthOnlineDataSource {
  Future<GoogleUserEntity> signInWithGoogle();
}
