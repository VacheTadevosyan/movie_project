import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:retrofit/retrofit.dart';

part 'search_remote.g.dart';

@RestApi(baseUrl: MovieStrings.baseUrl)
abstract class SearchRemote {
  factory SearchRemote(Dio dio, {String? baseUrl}) = _SearchRemote;

  @GET("/search/movie")
  Future<MovieResultsResponse> getSearch({
    @Query("api_key") required String apiKey,
    @Query("query") String? query,
    @Query("page") int page = 1,
    @Query("language") String? language,
    @Query("include_adult") bool includeAdult = true,
  });
}
