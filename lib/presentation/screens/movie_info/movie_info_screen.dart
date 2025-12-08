import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/screens/movie_info/bloc/movie_info_bloc.dart';
import 'package:movie_project/presentation/widgets/movie_details_ui.dart';

@RoutePage()
class MovieInfoScreen extends StatelessWidget {
  const MovieInfoScreen({
    super.key,
    required this.movieID,
    required this.releaseDate,
  });

  final int movieID;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MovieInfoBloc()..add(MovieInfoEvent.load(id: movieID)),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              context.pushRoute(HomeRoute());
            },
          ),
          title: Text(MovieStrings.movieInfoTitle(context)),
          backgroundColor: MovieColors.darkBlue,
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<MovieInfoBloc, MovieInfoState>(
            builder: (context, state) {
              return state.maybeWhen(
                load: () => const Center(child: CircularProgressIndicator()),
                loaded: (movie) {
                  return movieDetailsUI(
                    context: context,
                    movie: movie,
                    releaseDate: releaseDate,
                  );
                },
                error: (message) => Center(child: Text(message)),
                orElse: () => const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
