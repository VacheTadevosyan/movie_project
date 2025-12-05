import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/domain/model/movie_model/movie_resultes/movie_results.dart';
import 'package:movie_project/presentation/screens/movie_info/bloc/movie_info_bloc.dart';
import 'package:movie_project/presentation/widgets/genre_widget.dart';
import 'package:movie_project/presentation/widgets/information_widget.dart';


@RoutePage()
class MovieInfoScreen extends StatelessWidget {
  const MovieInfoScreen({super.key, required this.movie});

  final MovieResults movie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieInfoBloc()..add(MovieInfoEvent.load()),
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
              return Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image.network(
                            MovieStrings.imageBaseUrl + movie.backdropPath,
                            height: MediaQuery.sizeOf(context).height / 3.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: MediaQuery.sizeOf(context).height / 3.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: AlignmentGeometry.topCenter,
                                end: AlignmentGeometry.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  MovieColors.background,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 32,
                          child: Row(
                            crossAxisAlignment: .end,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                                child: Image.network(
                                  MovieStrings.imageBaseUrl + movie.posterPath,
                                  width: MediaQuery.sizeOf(context).width / 3.5,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Expanded(
                                  child: Text(
                                    movie.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 48),
                    Row(
                      children: [
                        InformationWidget(
                          icon: Icons.star,
                          title: movie.voteAverage.toString().substring(0, 3),
                          iconColor: Colors.yellow,
                          secondTitle: "(${movie.voteCount})",
                        ),
                        InformationWidget(
                          icon: Icons.calendar_today_outlined,
                          title: movie.releaseDate.substring(0, 4).toString(),
                          iconColor: MovieColors.greyText,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          SizedBox(height: 20),
                          Text(MovieStrings.genres(context),style: TextStyle(fontSize: 20)),
                          SizedBox(height: 20),
                          GenreWidget(genre: movie.genres),
                          SizedBox(height: 20),
                          Text(MovieStrings.overview(context),style: TextStyle(fontSize: 20) ),
                          SizedBox(height: 16),
          
                          Text(
                            movie.overview,
                            style: TextStyle(
                              fontSize: 16,
                              
                              color: MovieColors.greyText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
