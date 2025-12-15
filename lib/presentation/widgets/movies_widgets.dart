import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        onTap: callback,
        child: Container(
          height: MediaQuery.sizeOf(context).height / 6,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: MovieColors.darkBlue,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
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
                            width: 60,
                            height: 60,
                          ),
                        ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                                ),
                                SizedBox(height: 4),
                                Text(
                                  date.length > 4 ? date.substring(0, 4) : date,
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
                            Text(voteAverage.toString().substring(0, 3)),
                            SizedBox(width: 6),
                            Text("($voteCount)"),
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
