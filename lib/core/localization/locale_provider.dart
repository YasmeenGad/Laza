import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:laza/core/localization/locale_repository.dart';

@injectable
class LocaleProvider extends ChangeNotifier {
  final LocaleRepository _localeRepository;

  LocaleProvider(this._localeRepository);

  Locale? _locale;

  Locale? get locale => _locale;

  Future<void> loadSavedLocale(
      {Locale fallbackLocale = const Locale('en')}) async {
    _locale = await _localeRepository.getLocale() ?? fallbackLocale;
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    await _localeRepository.setLocale(locale);
    notifyListeners();
  }

  Future<void> toggleLocale() async {
    final locale = _locale ?? const Locale('en');
    await setLocale(
        locale == const Locale('en') ? const Locale('ar') : const Locale('en'));
  }
}
