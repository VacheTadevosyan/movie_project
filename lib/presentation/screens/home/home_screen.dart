import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/data/repository/movie_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'package:movie_project/presentation/widgets/movies_widgets.dart';

import 'bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final PagingController<int, MovieResults> pagingController =
      PagingController<int, MovieResults>(
        getNextPageKey: (state) =>
            state.lastPageIsEmpty ? null : state.nextIntPageKey,
        fetchPage: (pageKey) =>
            MoviesRepository().getMovieResults(page: pageKey),
      );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentRoute = context.router.current.name;
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.load()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            MovieStrings.homeTitle(context),
          ),
          backgroundColor: MovieColors.darkBlue,
        ),

        body: BlocProvider(
          create: (context) => HomeBloc()..add(const HomeEvent.load()),
          child: PagingListener<int, MovieResults>(
            controller: pagingController,
            builder: (context, state, fetchNextPage) {
              return PagedListView<int, MovieResults>(
                state: state,
                fetchNextPage: fetchNextPage,
                builderDelegate: PagedChildBuilderDelegate<MovieResults>(
                  firstPageProgressIndicatorBuilder: (context) =>
                      Center(child: CircularProgressIndicator()),
                  newPageProgressIndicatorBuilder: (context) => const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  itemBuilder: (context, movie, index) {
                    if (index == 0) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              MovieStrings.popularMovies(context),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          MoviesWidget(
                            title: movie.title,
                            date: movie.releaseDate,
                            voteAverage: movie.voteAverage,
                            voteCount: movie.voteCount,
                            pictureUrl: movie.posterPath ?? "",
                            callback: () {
                              context.pushRoute(
                                MovieInfoRoute(
                                  movieID: movie.id,
                                  releaseDate: movie.releaseDate,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    }

                    return MoviesWidget(
                      title: movie.title,
                      date: movie.releaseDate,
                      voteAverage: movie.voteAverage,
                      voteCount: movie.voteCount,
                      pictureUrl: movie.posterPath ?? '',
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
              );
            },
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          height: MediaQuery.sizeOf(context).height / 9,
          color: MovieColors.darkBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Bottoms(
                icon: Icons.home,
                onTap: () {},
                text: MovieStrings.homeBottom(context),
                textColor: currentRoute == HomeRoute.name
                    ? MovieColors.lightBlue
                    : theme.colorScheme.onSurface,
                iconColor: currentRoute == HomeRoute.name
                    ? MovieColors.lightBlue
                    : theme.colorScheme.onSurface,
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
                  context.pushRoute(SearchRoute());
                },
                text: MovieStrings.searchBottom(context),
                textColor: theme.colorScheme.onSurface,
                iconColor: theme.colorScheme.onSurface,
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
          ),
        ),
      ),
    );
  }
}
