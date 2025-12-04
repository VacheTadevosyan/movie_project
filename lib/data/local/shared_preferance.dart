import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveLocale({required String locale}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('language', locale);
}

Future<Locale> fetchLocale() async {
  final prefs = await SharedPreferences.getInstance();
  return Locale(prefs.getString('language') ?? 'en-US');

}