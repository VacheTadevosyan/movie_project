import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../configs/app_local.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  Locale ?local;
  SettingsBloc() : super(const SettingsState.initial()) {


    on<SettingsInitEvent>((event, emit) async {
      local = await AppLocale().getLocale();
      emit(LocalLoaded(local?.languageCode ?? "ru"));

    });

    on<LoadLocale>((event, emit) async {
      AppLocale().changeLocale(event.locale);
      local = await AppLocale().getLocale();
      emit(LocalLoaded(local?.languageCode ?? "ru"));
    });
  }
}
