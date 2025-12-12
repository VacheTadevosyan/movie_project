import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:movie_project/presentation/screens/favorites/favorites_screen.dart';
import 'package:movie_project/presentation/screens/movie_info/movie_info_screen.dart';

import '../../presentation/screens/home/home_screen.dart';
import '../../presentation/screens/search/search_screen.dart';
import '../../presentation/screens/settings/settings_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,initial: true,),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: MovieInfoRoute.page),
    AutoRoute(page: FavoritesRoute.page),
  ];
}