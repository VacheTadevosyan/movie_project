import 'package:dio/dio.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/data/rest_client/movies/movie_remote.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';

class MoviesRepository {

  final MovieRemote _movieRemote = MovieRemote(Dio());

  Future<List<MovieResultsResponse>> getMovieModel() async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _movieRemote.getPopularMovie(MovieStrings.apiKey, 1 , local);
    print(local);
    return response;
  }

  Future<MovieResultsResponse> getMovieResults() async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _movieRemote.getPopularMovieResults(MovieStrings.apiKey, 1 , local);
    print(local);
    return response;
  }


}
