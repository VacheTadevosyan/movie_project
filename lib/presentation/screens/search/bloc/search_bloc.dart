import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    // Инициализируем состояние с пустой строкой поиска.
    on<LoadSearchEvent>((event, emit) async {
      emit(const SearchState.load(query: ''));
    });

    // Обновляем только строку поиска. Загрузка данных и пагинация
    // выполняются через PagingController в UI.
    on<QueryChangedEvent>((event, emit) async {
      emit(SearchState.load(query: event.query));
    });
  }
}
