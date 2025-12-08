import 'package:dio/dio.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/data/rest_client/movies/movie_remote.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';

class MoviesRepository {
  final MovieRemote _movieRemote = MovieRemote(Dio());

  Future<MovieResultsResponse> getMovieModel({required int page}) async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _movieRemote.getPopularMovie(
      MovieStrings.apiKey,
      page,
      local,
    );

    return response;
  }

  // Future<List<MovieResults>> getMovieResults() async {
  //   final local = (await AppLocale().getLocale()).languageCode;
  //   final response = await _movieRemote.getPopularMovieResults(MovieStrings.apiKey, 1 , local);
  //   return response;
  // }

  Future<List<MovieResults>> getMovieResults({required int page}) async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _movieRemote.getPopularMovie(
      MovieStrings.apiKey,
      page,
      local,
    );
    return response.results;
  }
}
