import 'package:flutter/material.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';

import 'genre_widget.dart';
import 'information_widget.dart';

Widget movieDetailsUI({
  required BuildContext context,
  required MovieDetailModel? movie,
  required String releaseDate,
}) {
  final theme = Theme.of(context);
  return movie != null ? Center(
  child: Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              child: Image.network(
                MovieStrings.imageBaseUrl + movie.backdropPath,
                height: MediaQuery
                    .sizeOf(context)
                    .height / 3.5,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery
                    .sizeOf(context)
                    .height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [Colors.transparent, theme.scaffoldBackgroundColor],
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
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    child: Image.network(
                      MovieStrings.imageBaseUrl + movie.posterPath,
                      width: MediaQuery
                          .sizeOf(context)
                          .width / 3.5,
                    ),
                  ),
                  SizedBox(width: 28,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery
                              .of(context)
                              .size
                              .width / 2,
                        ),
                        child: Text(
                          movie.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery
                              .of(context)
                              .size
                              .width / 2,
                        ),
                        child: Text(
                          movie.tagline,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 15,
                            color: MovieColors.grey,
                          ),
                        ),
                      ),
                    ],
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
              iconColor: MovieColors.yellow,
              secondTitle: "(${movie.voteCount})",
            ),
            InformationWidget(
              icon: Icons.calendar_today_outlined,
              title: releaseDate.substring(0, 4),
              iconColor: MovieColors.grey,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 20),
              Text(
                MovieStrings.genres(context),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              GenreWidget(genre: movie.genres),
              SizedBox(height: 20),
              Text(
                MovieStrings.overview(context),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                movie.overview,
                style: TextStyle(fontSize: 16, color: MovieColors.grey),
              ),
            ],
          ),
        ),
      ],
    ),
  )
      : SizedBox(
    height: MediaQuery.sizeOf(context).height,
    width: MediaQuery.sizeOf(context).width ,
    child: Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      children: [
        Icon(Icons.mood_bad_rounded,size: 100,),
          Text("Movie not founded", style: TextStyle(
              fontSize: 24
          ),
          ),
      ],
    ),
  );
}
