import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/configs/favorite_list.dart';
import 'package:movie_project/data/repository/movie_detail_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {

  FavoriteBloc()
      :super(const FavoriteState.initial()) {
    final FavoriteList favoriteList = FavoriteList();
    final MoviesDetailRepository repository = MoviesDetailRepository();

    on<FavoriteLoadEvent>((event, emit) async {
      try {
        final ids = await favoriteList.getIds();

        if (ids.isEmpty) {
          emit(const FavoriteState.loaded(movies: []));
          return;
        }

        final movies = <MovieDetailModel>[];

        for (final id in ids) {
          final movie = await repository.getMovieDetailModel(id: id);
          if (movie != null) {
            movies.add(movie);
          }
        }

        emit(FavoriteState.loaded(movies: movies));
      } catch (e) {
        emit(const FavoriteState.error());
      }
    });
  }
}
