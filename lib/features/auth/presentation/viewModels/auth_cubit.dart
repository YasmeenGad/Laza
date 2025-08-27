import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:laza/features/auth/domain/use_cases/sign_in_with_google_usecase.dart';
import 'package:laza/features/auth/presentation/viewModels/auth_action.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failure_handler.dart';
import '../../../../core/errors/result.dart';
import '../../domain/entities/google_user_entity.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final SignInWithGoogleUseCase _googleUseCase;

  AuthCubit(this._googleUseCase) : super(AuthInitial());

  void doAction(AuthAction action) {
    switch (action) {
      case SignInWithGoogle():
        _signInWithGoogle();
        break;
    }
  }

  Future<void> _signInWithGoogle() async {
    emit(SignInWithGoogleLoading());
    final result = await _googleUseCase.call();
    switch (result) {
      case Success<GoogleUserEntity>():
        emit(SignInWithGoogleSuccess(result.data));
        break;
      case Error<GoogleUserEntity>():
        emit(SignInWithGoogleFailure(
            FailureHandler.mapFailureToMessage(result.failure)));
        break;
    }
  }
}
