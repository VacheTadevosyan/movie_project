import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/data/repository/movie_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<MovieLoadEvent>((event, emit) async {
      final repository = MoviesRepository();
      final movies = await repository.getMovieResults();

      try{
        emit(HomeState.loaded(movie: movies));
      }catch(e){
        emit(HomeState.error(massage:e.toString() ));
      }
    });
  }
}
