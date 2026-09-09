import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/configs/constants/Strings/strings.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/widgets/bottoms.dart';
import 'package:movie_project/presentation/widgets/two_botton_widget.dart';
import 'bloc/settings_bloc.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentRoute = context.router.current.name;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(MovieStrings.settingsTitle(context)),
        backgroundColor: const Color(0x101829FF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(MovieStrings.selectLanguage(context)),
              SizedBox(height: 16.h),
              BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  String currentLang = "ru";
                  bool isDarkTheme = true;
                  if (state is LocalLoaded) {
                    currentLang = state.locale;
                    isDarkTheme = state.isDarkMode;
                  }
                  return Column(
                    crossAxisAlignment: .start,
                    children: [
                      TwoBottonWidget(
                        firstTitle: "English",
                        secondTitle: "Русский",
                        firstTitleColor: currentLang == "en"
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        secondTitleColor: currentLang == "ru"
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        firstIconColor: currentLang == "en"
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        secondIconColor: currentLang == "ru"
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        firstCallBack: () {
                          context.read<SettingsBloc>().add(
                            SettingsEvent.loadLocale('en'),
                          );
                        },
                        secondCallBack: () {
                          context.read<SettingsBloc>().add(
                            SettingsEvent.loadLocale('ru'),
                          );
                        },
                        firstIcon: Icons.language,
                        secondIcon: Icons.language,
                      ),
                      SizedBox(height: 30.h),
                      Text(MovieStrings.selectTheme(context)),
                      SizedBox(height: 16.h),
                      TwoBottonWidget(
                        firstTitle: MovieStrings.lightTheme(context),
                        secondTitle: MovieStrings.darkTheme(context),
                        firstTitleColor: !isDarkTheme
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        secondTitleColor: isDarkTheme
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        firstIconColor: !isDarkTheme
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        secondIconColor: isDarkTheme
                            ? MovieColors.lightBlue
                            : theme.colorScheme.onSurface,
                        firstCallBack: () {
                          context.read<SettingsBloc>().add(
                            SettingsEvent.loadTheme(false),
                          );
                        },
                        secondCallBack: () {
                          context.read<SettingsBloc>().add(
                            SettingsEvent.loadTheme(true),
                          );
                        },
                        firstIcon: Icons.sunny,
                        secondIcon: Icons.nights_stay,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 32),
              Text(MovieStrings.about(context)),
              const SizedBox(height: 16),
              Container(
                height: 72,
                decoration: BoxDecoration(
                  color: MovieColors.darkBlue,
                  borderRadius: BorderRadius.all(Radius.circular(24.w)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: theme.colorScheme.onSurface,
                      size: 24.w,
                    ),
                    title: Text(
                      MovieStrings.version(context),
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 16.sp,
                      ),
                    ),
                    trailing: Text(
                      "1.0.0",
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 90.h,
        color: const Color(0x101829FF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottoms(
              icon: Icons.home,
              onTap: () => context.pushRoute(HomeRoute()),
              text: MovieStrings.homeBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.search,
              onTap: () => context.pushRoute(SearchRoute()),
              text: MovieStrings.searchBottom(context),
              textColor: theme.colorScheme.onSurface,
              iconColor: theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.favorite,
              onTap: () {
                context.pushRoute(FavoritesRoute());
              },
              text: MovieStrings.favoriteBottom(context),
              textColor: currentRoute == FavoritesRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
              iconColor: currentRoute == FavoritesRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
            ),
            Bottoms(
              icon: Icons.settings,
              onTap: () {},
              text: MovieStrings.settingsBottom(context),
              textColor: currentRoute == SettingsRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
              iconColor: currentRoute == SettingsRoute.name
                  ? MovieColors.lightBlue
                  : theme.colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }
}
