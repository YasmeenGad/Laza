import 'package:laza/features/auth/domain/entities/google_user_entity.dart';

import '../models/google_user_dto.dart';

class AuthMapper {
  static GoogleUserEntity toGoogleUserEntity(GoogleUserDto googleUserDto) =>
      GoogleUserEntity(
          uid: googleUserDto.uid,
          displayName: googleUserDto.displayName,
          email: googleUserDto.email,
          photoUrl: googleUserDto.photoUrl);
}
