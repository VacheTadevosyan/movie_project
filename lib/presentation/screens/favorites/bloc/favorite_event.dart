part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.load() = FavoriteLoadEvent;
  const factory FavoriteEvent.loaded() = FavoriteLoadedEvent;
  const factory FavoriteEvent.error() = FavoriteErrorEvent;
}
