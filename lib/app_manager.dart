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
      child: BlocConsumer<SettingsBloc, SettingsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            localeLoaded: (locale) {
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
                theme: ThemeData(scaffoldBackgroundColor: MovieColors.background,
                  colorScheme: ColorScheme.dark(primary: MovieColors.background)
                ),
              );
            },
            orElse: () => Scaffold(),
          );
        },
      ),
    );
  }
}
