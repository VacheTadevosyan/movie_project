import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/data/repository/search_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    // final String query= '';
    // final int page = 1;

    final repository = SearchRepository();

    on<LoadSearchEvent>((event, emit) async {

      // final movies = await repository.getSearchModel(query: query,page: page);

      final query = state.maybeWhen(
        load: (q) => q,
        orElse: () => '',
      );

      emit(SearchState.load(query: query));
      try {
        final movies = await repository.getSearchModel(query: query, page: 1);
        emit(SearchState.loaded(movie: movies.results ?? []));
      } catch (e) {
        emit(SearchState.error(massage: e.toString()));
      }
    });

    on<QueryChangedEvent>((event,emit) async {
      final newQuery = event.query;

      try {
        final movies = await repository.getSearchModel(query: newQuery, page: 1);
        print(movies.results);
        emit(SearchState.loaded(movie: movies.results));
      } catch (e) {
        emit(SearchState.error(massage: e.toString()));
      }

    });

  }
}
