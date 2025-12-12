import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';


@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = context.router.current.name;
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.sizeOf(context).height / 9,
        color: MovieColors.darkBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () {},
              text: MovieStrings.homeBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () {
                context.pushRoute(SearchRoute());
              },
              text: MovieStrings.searchBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.favorite,
              onTap: () {
                context.pushRoute(SearchRoute());
              },
              text: MovieStrings.searchBottom(context),
              textColor: currentRoute == HomeRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
              iconColor: currentRoute == HomeRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {
                context.router.replace(const SettingsRoute());
              },
              text: MovieStrings.settingsBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }
}
