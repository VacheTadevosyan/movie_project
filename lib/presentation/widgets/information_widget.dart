import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    required this.icon,
    required this.title,
    this.secondTitle,
    required this.iconColor,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String? secondTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.h),
      child: Container(
        height: 40.h,
        width: 120.w,
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(16.w)),
        ),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Icon(icon, color: iconColor),
            Text(title,style: TextStyle(color: theme.colorScheme.onSurface,fontSize: 14.sp)),
            ?secondTitle != null
                ? Text(
                    secondTitle!,
                    style: TextStyle(color: theme.colorScheme.onSurface,fontSize: 14.sp),
                  )
                : null,
          ],
        ),
      ),
    );
  }
}
