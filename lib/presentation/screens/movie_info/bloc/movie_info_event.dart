part of 'movie_info_bloc.dart';

@freezed
class MovieInfoEvent with _$MovieInfoEvent {
  const factory MovieInfoEvent.load({required int id}) = MovieInfoLoad;
  const factory MovieInfoEvent.loaded() = MovieInfoLoaded;
  const factory MovieInfoEvent.error() = MovieInfoError;
}
