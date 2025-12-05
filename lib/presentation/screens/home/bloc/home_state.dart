part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.load() = MovieLoadState;
  const factory HomeState.loaded({required List<MovieResults> movie}) = MovieLoadedState;
  const factory HomeState.error({required String massage}) = MovieErrorState;
}
