// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomeScreen(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HomeRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [MovieInfoScreen]
class MovieInfoRoute extends PageRouteInfo<MovieInfoRouteArgs> {
  MovieInfoRoute({
    Key? key,
    required int movieID,
    required String releaseDate,
    List<PageRouteInfo>? children,
  }) : super(
         MovieInfoRoute.name,
         args: MovieInfoRouteArgs(
           key: key,
           movieID: movieID,
           releaseDate: releaseDate,
         ),
         initialChildren: children,
       );

  static const String name = 'MovieInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieInfoRouteArgs>();
      return MovieInfoScreen(
        key: args.key,
        movieID: args.movieID,
        releaseDate: args.releaseDate,
      );
    },
  );
}

class MovieInfoRouteArgs {
  const MovieInfoRouteArgs({
    this.key,
    required this.movieID,
    required this.releaseDate,
  });

  final Key? key;

  final int movieID;

  final String releaseDate;

  @override
  String toString() {
    return 'MovieInfoRouteArgs{key: $key, movieID: $movieID, releaseDate: $releaseDate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MovieInfoRouteArgs) return false;
    return key == other.key &&
        movieID == other.movieID &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode => key.hashCode ^ movieID.hashCode ^ releaseDate.hashCode;
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}
