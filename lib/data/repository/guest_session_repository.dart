import 'package:dio/dio.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/data/rest_client/guest_session/guest_session_remote.dart';

class GuestSessionRepository {
  final RatingRemote _ratingRemote = RatingRemote(Dio());
  Future<String> getSession() async {
    final response = await _ratingRemote.getGuestSession(
      MovieStrings.apiKey,
    );

    return response.guestSessionId;
  }
}