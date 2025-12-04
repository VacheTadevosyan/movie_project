part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.load() = MovieLoadEvent;
  const factory HomeEvent.loaded() = MovieLoadedEvent;
  const factory HomeEvent.error() = MovieErrorEvent;
}
