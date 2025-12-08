import 'package:flutter/cupertino.dart';

import 'package:movie_project/generated/l10n.dart';

abstract class MovieStrings {

  ///MAIN TITLES
  static String homeTitle(BuildContext context) => S.of(context).movieExplorer;
  static String searchTitle(BuildContext context) => S.of(context).search;
  static String settingsTitle(BuildContext context) => S.of(context).settings;
  static String movieInfoTitle(BuildContext context) => S.of(context).movieDetails;

  static String popularMovies(BuildContext context) => S.of(context).popularMovies;
  static String overview(BuildContext context) => S.of(context).overview;
  static String genres(BuildContext context) => S.of(context).genres;

  ///BOTTOMS
  static String homeBottom(BuildContext context) => S.of(context).home;
  static String searchBottom(BuildContext context) => S.of(context).search;
  static String settingsBottom(BuildContext context) => S.of(context).settings;

  ///SETTINGS
  static String about(BuildContext context) => S.of(context).about;
  static String version(BuildContext context) => S.of(context).version;
  static String selectLanguage(BuildContext context) => S.of(context).selectLanguage;

  ///API
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '983f06a48e7c71d8550f97ea1e6b30d3';
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';
  static const String popularMovie = '/movie/popular';
  static const String movie = '/movie/{id}';
}
