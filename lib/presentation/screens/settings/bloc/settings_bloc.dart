import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/configs/app_theme.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {

  Locale ?local;
  bool ?isDarkMode;

  SettingsBloc() : super(const SettingsState.initial()) {


    on<SettingsInitEvent>((event, emit) async {
      local = await AppLocale().getLocale();
      isDarkMode = await AppTheme().getTheme();
      emit(LocalLoaded( locale: local?.languageCode ?? "ru", isDarkMode: isDarkMode ?? true));

    });

    on<LoadLocale>((event, emit) async {
      AppLocale().changeLocale(event.locale);
      local = await AppLocale().getLocale();
      isDarkMode = await AppTheme().getTheme();
      emit(LocalLoaded( locale: local?.languageCode ?? "ru", isDarkMode: isDarkMode ?? true));
    });

    on<LoadTheme>((event, emit) async {
      local = await AppLocale().getLocale();
      AppTheme().changeTheme(event.isDarkMode);
      isDarkMode = await AppTheme().getTheme();
      emit(LocalLoaded(locale: local?.languageCode ?? "ru", isDarkMode: isDarkMode ?? true));
    });

  }
}
