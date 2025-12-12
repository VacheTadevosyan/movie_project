part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadLocale(String locale) = LoadLocale;
  const factory SettingsEvent.loadTheme(bool isDarkMode) = LoadTheme;
  const factory SettingsEvent.initial() = SettingsInitEvent;
}
