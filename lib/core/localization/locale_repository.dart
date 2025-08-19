import 'dart:ui';

abstract class LocaleRepository {
  Future<Locale?> getLocale();

  Future<void> setLocale(Locale locale);
}
