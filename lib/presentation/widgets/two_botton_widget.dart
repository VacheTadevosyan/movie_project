import 'package:flutter/material.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';

class TwoBottonWidget extends StatelessWidget {
  TwoBottonWidget({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.firstCallBack,
    required this.secondCallBack,
    required this.firstIcon,
    required this.secondIcon,
    this.firstTitleColor = MovieColors.white,
    this.secondTitleColor = MovieColors.white,
    this.firstIconColor = MovieColors.white,
    this.secondIconColor = MovieColors.white,
  });

  final String firstTitle;
  final String secondTitle;
  final Color firstTitleColor;
  final Color secondTitleColor;
  final IconData firstIcon;
  final IconData secondIcon;
  final Color firstIconColor;
  final Color secondIconColor;
  final VoidCallback firstCallBack;
  final VoidCallback secondCallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height/5,
      decoration: BoxDecoration(
        color: MovieColors.darkBlue,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                leading: Icon(firstIcon, color: firstIconColor),
                title: Text(
                  firstTitle,
                  style: TextStyle(color: firstTitleColor),
                ),
                onTap: firstCallBack,
              ),
            ),
            const Divider(color: MovieColors.grey),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                leading: Icon(secondIcon, color: secondIconColor),
                title: Text(
                  secondTitle,
                  style: TextStyle(color: secondTitleColor),
                ),
                onTap: secondCallBack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
