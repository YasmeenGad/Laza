import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:laza/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locale_repository.dart';

@Injectable(as: LocaleRepository)
class LocaleRepositoryImpl implements LocaleRepository {
  final SharedPreferences _sharedPref;

  LocaleRepositoryImpl(this._sharedPref);

  @override
  Future<Locale?> getLocale() async {
    final code = _sharedPref.getString(AppConstants.appLocaleCode);
    if (code == null) return null;
    return Locale(code);
  }

  @override
  Future<void> setLocale(Locale locale) {
    return _sharedPref.setString(
        AppConstants.appLocaleCode, locale.languageCode);
  }
}
