import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'rating_remote.g.dart';

@RestApi(baseUrl: MovieStrings.baseUrl)
abstract class RatingRemote {
  factory RatingRemote(Dio dio, {String? baseUrl}) = _RatingRemote;


  @POST('/movie/{movie_id}/rating')
  Future<void> rateMovie(
      @Header('Authorization') String authorization,
      @Path('movie_id') int movieId,
      @Query('guest_session_id') String guestSessionId,
      @Body() Map<String, String> body,
      );
}
