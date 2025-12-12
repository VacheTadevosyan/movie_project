part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.localeLoaded({required String locale, required bool isDarkMode}) = LocalLoaded;
}
