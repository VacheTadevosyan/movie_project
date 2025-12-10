import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/data/repository/search_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'package:movie_project/presentation/widgets/search_bar_widget.dart';

import '../../widgets/movies_widgets.dart';
import 'bloc/search_bloc.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SearchController();
    final PagingController<int, MovieResults> pagingController =
        PagingController<int, MovieResults>(
          getNextPageKey: (state) =>
              state.lastPageIsEmpty ? null : state.nextIntPageKey,
          fetchPage: (pageKey) {
            // Берём актуальное значение из текстового контроллера,
            // чтобы не зависеть от контекста Bloc внутри fetchPage.
            final query = controller.text;

            if (query.trim().isEmpty) return Future.value([]);

            return SearchRepository().getSearchModelResults(
              query: query,
              page: pageKey,
            );
          },
        );
    final currentRoute = context.router.current.name;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          MovieStrings.searchTitle(context),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0x101829FF),
      ),
      body: BlocProvider(
        create: (context) => SearchBloc()..add(const SearchEvent.load()),
        child: PagingListener<int, MovieResults>(
          controller: pagingController,
          builder: (context, state, fetchNextPage) {
            return Column(
              children: [
                const SizedBox(height: 8),
                SearchBarWidget(
                  searchController: controller,
                  function: (value) {
                    context.read<SearchBloc>().add(
                      SearchEvent.queryChanged(value),
                    );
                    // Каждый новый ввод в строку поиска перезапускает пагинацию.
                    pagingController.refresh();
                  },
                ),
                const SizedBox(height: 8),

                Expanded(
                  child: PagedListView<int, MovieResults>(
                    state: state,
                    fetchNextPage: fetchNextPage,
                    builderDelegate: PagedChildBuilderDelegate<MovieResults>(
                      noItemsFoundIndicatorBuilder: (context) => Center(
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(Icons.search,size: 100,),
                            Text(
                              "Search movies...",
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),
                          ],
                        ),
                      ),
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
                                  MovieStrings.searchResults(context),
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              MoviesWidget(
                                title: movie.title,
                                date: movie.releaseDate,
                                voteAverage: movie.voteAverage,
                                voteCount: movie.voteCount,
                                pictureUrl: movie.posterPath,
                                callback: () {
                                  context.pushRoute(
                                    MovieInfoRoute(
                                      movieID: movie.id,
                                      releaseDate: movie.releaseDate ,
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
                          pictureUrl: movie.posterPath ,
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
                  ),
                ),
              ],
            );
          },
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.sizeOf(context).height / 9,
        color: Color(0x101829FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () {
                context.pushRoute(HomeRoute());
              },
              text: MovieStrings.homeBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () {},
              text: MovieStrings.searchBottom(context),
              textColor: currentRoute == SearchRoute.name
                  ? Colors.blue
                  : MovieColors.whiteText,
              iconColor: currentRoute == SearchRoute.name
                  ? Colors.blue
                  : MovieColors.whiteItem,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {
                context.pushRoute(SettingsRoute());
              },
              text: MovieStrings.settingsBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
