import 'package:injectable/injectable.dart';

import '../../../../core/errors/result.dart';
import '../contracts/auth_repo.dart';
import '../entities/google_user_entity.dart';

@injectable
class SignInWithGoogleUseCase {
  final AuthRepo authRepo;

  const SignInWithGoogleUseCase({required this.authRepo});

  Future<Result<GoogleUserEntity>> call() => authRepo.signInWithGoogle();
}
