import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'package:movie_project/presentation/widgets/movies_widgets.dart';

import 'bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(const HomeEvent.load()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            MovieStrings.homeTitle(context),
            style: TextStyle(color: MovieColors.whiteText),
          ),
          backgroundColor: MovieColors.darkBlue,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              load: () => const Center(child: CircularProgressIndicator()),
              loaded: (movies) => ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Text(
                        MovieStrings.popularMovies(context),
                        style: TextStyle(fontSize: 16),
                      ),
                    );
                  }
                  final movie = movies.results[index - 1];
                  return MoviesWidget(
                    title: movie.title,
                    date: movie.releaseDate,
                    voteAverage: movie.voteAverage,
                    voteCount: movie.voteCount,
                    pictureUrl: movie.posterPath,
                  );
                },
              ),
              error: (String massage) => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    massage,
                    style: TextStyle(color: MovieColors.whiteText),
                  ),
                ),
              ),
            );
          },
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
                textColor: MovieColors.whiteText,
                iconColor: MovieColors.whiteItem,
              ),
              Bottoms(
                icon: Icons.search,
                onTap: () {
                  context.pushRoute(SearchRoute());
                },
                text: MovieStrings.searchBottom(context),
                textColor: MovieColors.whiteText,
                iconColor: MovieColors.whiteItem,
              ),
              Bottoms(
                icon: Icons.settings,
                onTap: () {
                  context.router.replace(SettingsRoute());
                },
                text: MovieStrings.settingsBottom(context),
                textColor: MovieColors.whiteText,
                iconColor: MovieColors.whiteItem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
