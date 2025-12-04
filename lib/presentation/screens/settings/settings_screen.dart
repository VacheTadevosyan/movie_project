import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'bloc/settings_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MovieStrings.settingsTitle(context),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0x101829FF),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                MovieStrings.selectLanguage(context),
                style: const TextStyle(color: Color(0x98A0AFFF)),
              ),
              const SizedBox(height: 16),
              Container(
                height: 144,
                decoration: BoxDecoration(
                  color: const Color(0x101829FF),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ListTile(
                          leading: const Icon(
                            Icons.language,
                            color: Colors.white,
                          ),
                          title: Text(
                            "English",
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            context.read<SettingsBloc>().add(
                              SettingsEvent.loadLocale('en'),
                            );
                          },
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ListTile(
                          leading: const Icon(
                            Icons.language,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Русский",
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            context.read<SettingsBloc>().add(
                              SettingsEvent.loadLocale('ru'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                MovieStrings.about(context),
                style: TextStyle(color: Color(0x98A0AFFF)),
              ),
              Container(
                height: 72,
                decoration: BoxDecoration(
                  color: const Color(0x101829FF),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    title: Text(
                      MovieStrings.version(context),
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text("1.0.0",style: TextStyle(color: MovieColors.greyText,fontSize: 16),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.sizeOf(context).height / 9,
        color: const Color(0x101829FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () => context.pushRoute(HomeRoute()),
              text: MovieStrings.homeBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () => context.pushRoute(SearchRoute()),
              text: MovieStrings.searchBottom(context),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {},
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
