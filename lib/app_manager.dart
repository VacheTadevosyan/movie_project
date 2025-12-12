import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movie_project/configs/constants/colors/colors.dart';
import 'package:movie_project/configs/routes/router.dart';
import 'package:movie_project/presentation/screens/settings/bloc/settings_bloc.dart';

import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc()..add(SettingsEvent.initial()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => state.maybeWhen(
          localeLoaded: (locale, isDarkMode) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              locale: Locale(locale),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              routerConfig: _appRouter.config(),
              theme: ThemeData(
                brightness: Brightness.light,
                scaffoldBackgroundColor: Colors.grey.shade100,
                primaryColor: MovieColors.lightBlue,
                colorScheme: ColorScheme.light(
                  primary: MovieColors.lightBlue,
                  surface: MovieColors.white,
                  onPrimary: MovieColors.white,
                  onSecondary: MovieColors.white,
                  onSurface: Colors.black87,
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: MovieColors.white,
                  foregroundColor: MovieColors.lightBlue,
                  elevation: 1,
                ),
                textTheme: TextTheme(
                  bodyLarge: TextStyle(color: Colors.black87),
                  bodyMedium: TextStyle(color: Colors.black87),
                  titleLarge: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              darkTheme: ThemeData(
                primaryColor: MovieColors.darkBlue,
                scaffoldBackgroundColor: MovieColors.background,
                colorScheme: ColorScheme.dark(
                  primary: MovieColors.darkBlue,
                  surface: Color(0xFF121212),
                  onPrimary: Colors.white,
                  onSecondary: Colors.black,
                  onSurface: Colors.white70,
                ),                appBarTheme: AppBarTheme(
                  foregroundColor: Colors.blue.shade700,
                  elevation: 1,
                ),

                textTheme: TextTheme(
                  bodyLarge: TextStyle(color: Colors.white),
                  bodyMedium: TextStyle(color: Colors.white70),
                  titleLarge: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            );
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
