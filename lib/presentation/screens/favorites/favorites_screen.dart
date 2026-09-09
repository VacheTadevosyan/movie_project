import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'package:movie_project/presentation/widgets/movies_widgets.dart';

import 'bloc/favorite_bloc.dart';


@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = context.router.current.name;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(MovieStrings.favoriteTitle(context)),
        backgroundColor: MovieColors.darkBlue,
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
          builder: (context, state) {
            return state.maybeWhen(
              load: () =>Center( child: CircularProgressIndicator()),
                loaded: (movies) => ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return MoviesWidget(
                      id: movie.id,
                      title: movie.title,
                      date: movie.releaseDate,
                      voteAverage: movie.voteAverage,
                      voteCount: movie.voteCount,
                      pictureUrl: movie.posterPath,
                      callback: () {
                        context.pushRoute(
                          MovieInfoRoute(
                            movieID: movie.id,
                            releaseDate: movie.releaseDate,
                          ),
                        );
                      },
                    );
                  },
                ),
              orElse: () => const SizedBox.shrink(),
            );
                }
      ),

      bottomNavigationBar: BottomAppBar(
        height: 90.h,
        color: MovieColors.darkBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () {
                context.pushRoute(HomeRoute());
              },
              text: MovieStrings.homeBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () {
                context.pushRoute(SearchRoute());
              },
              text: MovieStrings.searchBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.favorite,
              onTap: () {
                context.pushRoute(FavoritesRoute());
              },
              text: MovieStrings.favoriteBottom(context),
              textColor: currentRoute == FavoritesRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
              iconColor: currentRoute == FavoritesRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {
                context.router.replace(const SettingsRoute());
              },
              text: MovieStrings.settingsBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
          ],
        )

        ,

      )

      ,

    );
  }
}
