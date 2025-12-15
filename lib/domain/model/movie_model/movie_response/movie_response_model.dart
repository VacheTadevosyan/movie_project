import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/domain/model/movie_model/movie_results/movie_results.dart';

part 'movie_response_model.freezed.dart';
part 'movie_response_model.g.dart';

@freezed
abstract class MovieResultsResponse with _$MovieResultsResponse {
  const factory MovieResultsResponse({
    required int page,
    required List<MovieResults> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResultsResponse;

  factory MovieResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResultsResponseFromJson(json);
}