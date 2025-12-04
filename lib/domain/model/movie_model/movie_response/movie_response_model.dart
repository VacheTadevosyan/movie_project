import 'package:freezed_annotation/freezed_annotation.dart';
import '../movie_resultes/movie_results.dart';

part 'movie_response_model.freezed.dart';
part 'movie_response_model.g.dart';

@freezed
abstract class MovieResultsResponse with _$MovieResultsResponse {
  const factory MovieResultsResponse({
    required int page,
    required List<MovieResults> results,
    required int total_pages,
    required int total_results,
  }) = _MovieResultsResponse;

  factory MovieResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResultsResponseFromJson(json);
}