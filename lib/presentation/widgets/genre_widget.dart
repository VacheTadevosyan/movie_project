import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/domain/model/movie_model/genre_model/genre_model.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({super.key, required this.genre});

  final List<GenreModel> genre;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0.w),
            child: Container(
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60.w)),
                color: theme.colorScheme.primary,
              ),
              child: Text(
                genre[index].name,
                style: TextStyle(
                  color: theme.colorScheme.onSurface,
                  fontSize: 14.sp,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
