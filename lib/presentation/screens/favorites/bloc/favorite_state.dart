part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;

  const factory FavoriteState.load() = FavoriteLoadState;

  const factory FavoriteState.loaded({
    required List<MovieDetailModel> movies,
  }) = FavoriteLoadedState;

  const factory FavoriteState.error() = FavoriteErrorState;
}
