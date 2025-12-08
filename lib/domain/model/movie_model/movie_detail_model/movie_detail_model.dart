import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_project/domain/model/movie_model/genre_model/genre_model.dart';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
abstract class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required List<GenreModel> genres,
    required int id,
    required String overview,
    @JsonKey(name: 'poster_path') required String posterPath,
    required String tagline,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}
