import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MovieStrings.searchTitle(context), style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0x101829FF),
      ),
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.sizeOf(context).height / 9,
        color: Color(0x101829FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () {
                context.pushRoute(HomeRoute());
              },
              text: MovieStrings.homeBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () {},
              text: MovieStrings.searchBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {
                context.pushRoute(SettingsRoute());
              },
              text: MovieStrings.settingsBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
