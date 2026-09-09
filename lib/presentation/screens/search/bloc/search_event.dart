part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.load() = LoadSearchEvent;
  const factory SearchEvent.queryChanged(String query) = QueryChangedEvent;
  const factory SearchEvent.loaded() = LoadedSearchEvent;
  const factory SearchEvent.error() = ErrorSearchEvent;
}
