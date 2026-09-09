part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.load({required String query}) = LoadSearchState;
  const factory SearchState.loaded({required List<MovieResults> movie}) = LoadedSearchState;
  const factory SearchState.error({required String massage}) = ErrorSearchState;
}
