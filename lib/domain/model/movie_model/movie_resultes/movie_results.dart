import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/configs/constants/genre/genre.dart';

part 'movie_results.freezed.dart';
part 'movie_results.g.dart';


@freezed
abstract class MovieResults with _$MovieResults {
  const factory MovieResults({
    required int id,
    required String title,

    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    String? overview,

    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,

    @JsonKey(name: 'genre_ids') required List<int> genreIds,
  }) = _MovieResults;

  factory MovieResults.fromJson(Map<String, dynamic> json) =>
      _$MovieResultsFromJson(json);
}
