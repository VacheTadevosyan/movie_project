import 'package:dio/dio.dart';
import 'package:movie_project/data/repository/guest_session_repository.dart';
import 'package:movie_project/data/rest_client/rating/rating_remote.dart';

class RatingRepository {

  final RatingRemote _ratingRemote = RatingRemote(Dio());
  final response = GuestSessionRepository();

  Future<void> changeRating(
      {required int movieId, required String value}) async {
    final body = {
      "value": value,
    };
    await _ratingRemote.rateMovie(
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ODNmMDZhNDhlN2M3MWQ4NTUwZjk3ZWExZTZiMzBkMyIsIm5iZiI6MTc2NDA1NTkzOC4wNTEsInN1YiI6IjY5MjU1YjgyODUxOGE4MThmM2MxMThiOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.APiNmi3i4EBYd28CDjAx31O1JqrPPKd6UODEAD-3WFI',
        movieId,
        await response.getSession(),
        body
    );
  }
}