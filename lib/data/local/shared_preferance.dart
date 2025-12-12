import 'dart:ffi';

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

///DarkAndLightMode
Future<void> saveTheme({required bool isDarkMode}) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isDarkMode', isDarkMode);
}

Future<bool> fetchTheme() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isDarkMode') ?? true;
}