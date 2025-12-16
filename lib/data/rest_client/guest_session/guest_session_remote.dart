import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/domain/model/rating/guest_session/guest_session_response.dart';
import 'package:retrofit/retrofit.dart';

part 'guest_session_remote.g.dart';

@RestApi(baseUrl: MovieStrings.baseUrl)
abstract class RatingRemote {
  factory RatingRemote(Dio dio, {String? baseUrl}) = _RatingRemote;


  @POST('/authentication/guest_session/new')
  Future<GuestSessionResponse> getGuestSession(
      @Query("api_key") String apiKey,
      );
}
