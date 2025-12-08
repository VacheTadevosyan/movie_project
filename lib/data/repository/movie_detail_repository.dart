import 'package:dio/dio.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/data/rest_client/movie_detail_remote/movie_detail_remote.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';

class MoviesDetailRepository {
  final MovieDetailRemote _movieDetailRemote = MovieDetailRemote(Dio());

  Future<MovieDetailModel> getMovieDetailModel(
      { required int id}) async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _movieDetailRemote.getMovieDetail(
      id,
      MovieStrings.apiKey,
      local,
    );

    return response;
  }
}