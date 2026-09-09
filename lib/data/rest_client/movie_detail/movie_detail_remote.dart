import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_detail_remote.g.dart';

@RestApi(baseUrl: MovieStrings.baseUrl)
abstract class MovieDetailRemote {
  factory MovieDetailRemote(Dio dio, {String? baseUrl}) = _MovieDetailRemote;

  @GET(MovieStrings.movie)
  Future<MovieDetailModel> getMovieDetail(
      @Path("id") int id,
      @Query("api_key") String apiKey,
      @Query("language") String language,
      );
}
