// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/data_sources/online/auth_online_data_source.dart'
    as _i51;
import '../../features/auth/data/data_sources/online/auth_online_data_source_impl.dart'
    as _i547;
import '../../features/auth/data/repositories/auth_repo_impl.dart' as _i662;
import '../../features/auth/domain/contracts/auth_repo.dart' as _i670;
import '../../features/auth/domain/use_cases/sign_in_with_google_usecase.dart'
    as _i645;
import '../../features/auth/presentation/viewModels/auth_cubit.dart' as _i411;
import '../localization/locale_provider.dart' as _i303;
import '../localization/locale_repository.dart' as _i330;
import '../localization/locale_repository_impl.dart' as _i800;
import 'modules/firebase_module.dart' as _i398;
import 'modules/shared_prefs_module.dart' as _i913;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPrefsModule = _$SharedPrefsModule();
    final firebaseModule = _$FirebaseModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i116.GoogleSignIn>(() => firebaseModule.googleSignIn);
    gh.factory<_i330.LocaleRepository>(
        () => _i800.LocaleRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i51.AuthOnlineDataSource>(
        () => _i547.AuthOnlineDataSourceImpl(gh<_i59.FirebaseAuth>()));
    gh.factory<_i303.LocaleProvider>(
        () => _i303.LocaleProvider(gh<_i330.LocaleRepository>()));
    gh.factory<_i670.AuthRepo>(
        () => _i662.AuthRepoImpl(gh<_i51.AuthOnlineDataSource>()));
    gh.factory<_i645.SignInWithGoogleUseCase>(
        () => _i645.SignInWithGoogleUseCase(authRepo: gh<_i670.AuthRepo>()));
    gh.factory<_i411.AuthCubit>(
        () => _i411.AuthCubit(gh<_i645.SignInWithGoogleUseCase>()));
    return this;
  }
}

class _$SharedPrefsModule extends _i913.SharedPrefsModule {}

class _$FirebaseModule extends _i398.FirebaseModule {}
