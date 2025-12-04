import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_results.freezed.dart';
part 'movie_results.g.dart';

@freezed
abstract class MovieResults with _$MovieResults {
  const factory MovieResults({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') required String posterPath,
    required String overview,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
  }) = _MovieResults;

  factory MovieResults.fromJson(Map<String, dynamic> json) =>
      _$MovieResultsFromJson(json);

}
