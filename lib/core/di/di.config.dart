// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../localization/locale_provider.dart' as _i303;
import '../localization/locale_repository.dart' as _i330;
import '../localization/locale_repository_impl.dart' as _i800;
import 'shared_prefs_module.dart' as _i295;

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
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.factory<_i330.LocaleRepository>(
        () => _i800.LocaleRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i303.LocaleProvider>(
        () => _i303.LocaleProvider(gh<_i330.LocaleRepository>()));
    return this;
  }
}

class _$SharedPrefsModule extends _i295.SharedPrefsModule {}
