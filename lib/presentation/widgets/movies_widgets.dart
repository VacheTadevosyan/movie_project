import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/favorite_list.dart';
import 'package:movie_project/presentation/screens/favorites/bloc/favorite_bloc.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({
    super.key,
    required this.id,
    required this.title,
    required this.date,
    required this.voteAverage,
    required this.voteCount,
    required this.pictureUrl,
    required this.callback,
  });

  final int id;
  final String title;
  final double voteAverage;
  final String date;
  final String? pictureUrl;
  final int voteCount;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0.w),
      child: GestureDetector(
        onTap: callback,
        child: Container(
          height: 0.16.sh,
          width: 1.sw,
          decoration: BoxDecoration(
            color: MovieColors.darkBlue,
            borderRadius: BorderRadius.circular(24.w),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 0.25.sw,
                child: ClipRRect(
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(24.0.w),
                    bottomLeft: Radius.circular(24.0.w),
                  ),

                  child: pictureUrl != null
                      ? Image.network(
                          MovieStrings.imageBaseUrl + pictureUrl!,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        )
                      : Container(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/images/image_not_founded.svg',
                            width: 60.w,
                            height: 60.h,
                          ),
                        ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  maxLines: 2,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  )
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  date.length > 4 ? date.substring(0, 4) : date,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: MovieColors.grey,)
                                ),
                              ],
                            ),
                          ),
                          BlocBuilder<FavoriteBloc, FavoriteState>(
                            builder: (context, state) {

                              bool isFavorite = false;

                              if (state is FavoriteLoadedState) {
                                isFavorite = state.movies.any((movie) => movie.id == id);
                              }

                              return IconButton(
                                onPressed: () async {
                                  final ids = await FavoriteList().getIds();
                                  if (ids.contains(id)) {
                                    FavoriteList().removeId(id);
                                    context.read<FavoriteBloc>().add(
                                      const FavoriteEvent.load(),
                                    );
                                  } else {
                                    FavoriteList().addId(id);
                                    context.read<FavoriteBloc>().add(
                                      const FavoriteEvent.load(),
                                    );
                                  }
                                },
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.star, color: MovieColors.yellow),
                            Text(voteAverage.toString().substring(0, 3), style: TextStyle(fontSize: 12.sp) ),
                            SizedBox(width: 6.w),
                            Text("($voteCount)", style: TextStyle(fontSize: 12.sp)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
