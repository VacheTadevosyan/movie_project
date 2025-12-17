import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/data/repository/rating_repository.dart';
import 'package:movie_project/domain/model/movie_model/movie_detail_model/movie_detail_model.dart';

import 'genre_widget.dart';
import 'information_widget.dart';

Widget movieDetailsUI({
  required BuildContext context,
  required MovieDetailModel? movie,
  required String releaseDate,
}) {
  final ratingRepository = RatingRepository();
  final theme = Theme.of(context);
  return movie != null
      ? Center(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: Image.network(
                      MovieStrings.imageBaseUrl + movie.backdropPath,
                      height: 0.285.sh,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    left: 0.w,
                    right: 0.w,
                    child: Container(
                      height: 0.285.sh,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentGeometry.topCenter,
                          end: AlignmentGeometry.bottomCenter,
                          colors: [
                            Colors.transparent,
                            theme.scaffoldBackgroundColor,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    left: 32.w,
                    child: Row(
                      crossAxisAlignment: .end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          child: Image.network(
                            MovieStrings.imageBaseUrl + movie.posterPath,
                            width: 0.285.sw,
                          ),
                        ),
                        SizedBox(width: 28.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 0.5.sw
                              ),
                              child: Text(
                                movie.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: 0.5.sw
                              ),
                              child: Text(
                                movie.tagline,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 15.sp,
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
              SizedBox(height: 48.h),
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
                    iconColor: theme.colorScheme.onSurface,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(24.0.w),
                child: RatingBar.builder(
                  allowHalfRating: true,
                  itemSize: 30.w,
                  initialRating: movie.voteAverage / 2,
                  minRating: 0.5,
                  glow: false,
                  direction: Axis.horizontal,
                  itemBuilder: (context, _) =>
                      Icon(Icons.star, color: MovieColors.yellow),
                  onRatingUpdate: (rating) {
                    rating = rating * 2;
                    ratingRepository.changeRating(
                      movieId: movie.id,
                      value: rating.toString(),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      MovieStrings.genres(context),
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    SizedBox(height: 20.h),
                    GenreWidget(genre: movie.genres),
                    SizedBox(height: 20.h),
                    Text(
                      MovieStrings.overview(context),
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      movie.overview,
                      style: TextStyle(fontSize: 16.sp, color: MovieColors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      : SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Icon(Icons.mood_bad_rounded, size: 100.w),
              Text("Movie not founded", style: TextStyle(fontSize: 24.sp)),
            ],
          ),
        );
}
