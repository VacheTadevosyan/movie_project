import 'dart:ui';
import 'package:movie_project/data/local/shared_preferance.dart';

class AppTheme {

  bool _isDarkMode = true;


  bool get
  isDarkMode => _isDarkMode;

  Future<void> changeTheme(bool isDarkMode) async {
    _isDarkMode = isDarkMode;
    await saveTheme(isDarkMode: isDarkMode);
  }

  Future<bool> getTheme() async {
    final savedTheme = await fetchTheme();
    _isDarkMode = savedTheme;
    return _isDarkMode;
  }

}
