part of 'movie_info_bloc.dart';

@freezed
class MovieInfoState with _$MovieInfoState {
  const factory MovieInfoState.initial() = MovieInfoInitialState;
  const factory MovieInfoState.load() = MovieInfoloadState;
  const factory MovieInfoState.loaded({required MovieDetailModel movie}) = MovieInfoLoadedState;
  const factory MovieInfoState.error({required String massage}) = MovieInfoErrorState;
}
