import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:laza/features/auth/data/mapper/auth_mapper.dart';
import 'package:laza/features/auth/domain/entities/google_user_entity.dart';

import '../../models/google_user_dto.dart';
import 'auth_online_data_source.dart';

@Injectable(as: AuthOnlineDataSource)
class AuthOnlineDataSourceImpl implements AuthOnlineDataSource {
  final FirebaseAuth _firebaseAuth;

  AuthOnlineDataSourceImpl(this._firebaseAuth);

  @override
  Future<GoogleUserEntity> signInWithGoogle() async {
    final GoogleSignInAccount googleUser =
        await GoogleSignIn.instance.authenticate();
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    await _firebaseAuth.signInWithCredential(credential);
    return AuthMapper.toGoogleUserEntity(
      GoogleUserDto(
        uid: googleUser.id,
        displayName: googleUser.displayName,
        email: googleUser.email,
        photoUrl: googleUser.photoUrl,
      ),
    );
  }
}
