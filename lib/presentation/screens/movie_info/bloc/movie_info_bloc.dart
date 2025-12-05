import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/data/repository/movie_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';

part 'movie_info_bloc.freezed.dart';
part 'movie_info_event.dart';
part 'movie_info_state.dart';

class MovieInfoBloc extends Bloc<MovieInfoEvent, MovieInfoState> {
  MovieInfoBloc() : super(const MovieInfoState.initial()) {
    on<MovieInfoLoad>((event, emit) async {
      int page = 1;
      final response = MoviesRepository();

      try {
        emit(
          MovieInfoState.loaded(
            movie: await response.getMovieResults(page: page),
          ),
        );
      } catch (e) {
        emit(MovieInfoState.error(massage: e.toString()));
      }
    });
  }
}
