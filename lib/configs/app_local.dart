import 'dart:ui';
import 'package:movie_project/data/local/shared_preferance.dart';

class AppLocale {

  Locale _locale = Locale('en');


  Locale get
  locale => _locale;

  Future<void> changeLocale(String localeCode) async {
    _locale = Locale(localeCode);
    await saveLocale(locale: localeCode);
  }

  Future<Locale> getLocale() async {
    final savedLocale = await fetchLocale();
    _locale = savedLocale;
    return _locale;
  }

}
