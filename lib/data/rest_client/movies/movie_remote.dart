import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_remote.g.dart';

@RestApi(baseUrl: MovieStrings.baseUrl)
abstract class MovieRemote {
  factory MovieRemote(Dio dio, {String? baseUrl}) = _MovieRemote;

  @GET(MovieStrings.popularMovie)
  Future<MovieResultsResponse> getPopularMovie(
    @Query("api_key") String apiKey,
    @Query("page") int page,
    @Query("language") String language,
  );

  @GET(MovieStrings.popularMovie)
  Future<List<MovieResults>> getPopularMovieResults(
      @Query("api_key") String apiKey,
      @Query("page") int page,
      @Query("language") String language,
      );

}
