import 'package:flutter/cupertino.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: MovieColors.darkBlue,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Icon(icon, color: iconColor),
            Text(title),
            ?secondTitle != null
                ? Text(
                    secondTitle!,
                    style: TextStyle(color: MovieColors.greyText),
                  )
                : null,
          ],
        ),
      ),
    );
  }
}
