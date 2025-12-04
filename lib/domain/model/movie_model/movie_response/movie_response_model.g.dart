// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieResultsResponse _$MovieResultsResponseFromJson(
  Map<String, dynamic> json,
) => _MovieResultsResponse(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => MovieResults.fromJson(e as Map<String, dynamic>))
      .toList(),
  total_pages: (json['total_pages'] as num).toInt(),
  total_results: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$MovieResultsResponseToJson(
  _MovieResultsResponse instance,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results,
  'total_pages': instance.total_pages,
  'total_results': instance.total_results,
};
