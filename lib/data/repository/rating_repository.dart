import 'package:dio/dio.dart';
import 'package:movie_project/data/rest_client/rating/rating_remote.dart';

class RatingRepository {

  final RatingRemote _ratingRemote = RatingRemote(Dio());

  Future<void> changeRating(
      {required int movieId, required String value}) async {
    final body = {
      "value": value,
    };
    await _ratingRemote.rateMovie(
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ODNmMDZhNDhlN2M3MWQ4NTUwZjk3ZWExZTZiMzBkMyIsIm5iZiI6MTc2NDA1NTkzOC4wNTEsInN1YiI6IjY5MjU1YjgyODUxOGE4MThmM2MxMThiOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.APiNmi3i4EBYd28CDjAx31O1JqrPPKd6UODEAD-3WFI',
        movieId,
        "1a385c4b6d42877918b4b2c72eb3a8d6",
        body
    );
  }
}