import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/data/repository/movie_detail_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';

part 'movie_info_bloc.freezed.dart';
part 'movie_info_event.dart';
part 'movie_info_state.dart';

class MovieInfoBloc extends Bloc<MovieInfoEvent, MovieInfoState> {
  MovieInfoBloc() : super(const MovieInfoState.initial()) {
    on<MovieInfoLoad>((event, emit) async {
      final response = MoviesDetailRepository();

      try {
        emit(
          MovieInfoState.loaded(
            movie: await response.getMovieDetailModel( id: event.id) ,
          ),
        );
      } catch (e) {
        emit(MovieInfoState.error(massage: e.toString()));
      }
    });
  }
}
