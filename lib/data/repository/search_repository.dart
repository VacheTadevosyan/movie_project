import 'package:dio/dio.dart';
import 'package:movie_project/configs/app_local.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/data/rest_client/search/search_remote.dart';
import 'package:movie_project/domain/model/movie_model/movie_response/movie_response_model.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';

class SearchRepository {
  final SearchRemote _searchRemote = SearchRemote(Dio());

  Future<MovieResultsResponse> getSearchModel({required String query, required int page}) async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _searchRemote.getSearch(
      apiKey: MovieStrings.apiKey,
      page: page,
      query: query,
      language: local,
    );

    return response;
  }



  ///For pagination
  ///in pageController
  Future<List<MovieResults>> getSearchModelResults({required String query, required int page}) async {
    final local = (await AppLocale().getLocale()).languageCode;
    final response = await _searchRemote.getSearch(
      apiKey: MovieStrings.apiKey,
      page: page,
      query: query,
      language: local,
    );

    return response.results;
  }
}
