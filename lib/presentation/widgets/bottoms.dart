import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';

class Bottoms extends StatelessWidget {
  const Bottoms({
    super.key,
    required this.icon,
    this.text = ' ',
    required this.onTap,
    this.textColor = MovieColors.black,
    this.iconColor = MovieColors.black,
  });

  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(icon, color: iconColor, size: 24.h),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
