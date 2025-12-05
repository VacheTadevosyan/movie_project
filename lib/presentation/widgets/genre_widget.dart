import 'package:flutter/cupertino.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({super.key, required this.genre});

  final List<String> genre;

  @override
  Widget build(BuildContext context) {
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
                color: Color(0xFF0A183F),
              ),
              child: Text(genre[index],style: TextStyle(
                color: Color(0xFF58A0FD)
              ),),
            ),
          );
        },
      ),
    );
  }
}
