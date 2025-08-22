import 'package:injectable/injectable.dart';
import 'package:laza/core/errors/result.dart';
import 'package:laza/core/errors/safe_call.dart';
import 'package:laza/features/auth/data/data_sources/online/auth_online_data_source.dart';
import 'package:laza/features/auth/domain/contracts/auth_repo.dart';
import 'package:laza/features/auth/domain/entities/google_user_entity.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthOnlineDataSource _onlineDataSource;

  AuthRepoImpl(this._onlineDataSource);

  @override
  Future<Result<GoogleUserEntity>> signInWithGoogle() async {
    return safeCall(() async {
      return await _onlineDataSource.signInWithGoogle();
    });
  }
}
