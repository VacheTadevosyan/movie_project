import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/domain/model/movie_model/genre_model/genre_model.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({super.key, required this.genre});

  final List<GenreModel> genre;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                color: theme.colorScheme.primary,
              ),
              child: Text(genre[index].name),
            ),
          );
        },
      ),
    );
  }
}
