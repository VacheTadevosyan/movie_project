import 'package:auto_route/auto_route.dart';

import '../../presentation/screens/home/home_screen.dart';
import '../../presentation/screens/search/search_screen.dart';
import '../../presentation/screens/settings/settings_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,initial: true,),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: SettingsRoute.page),
  ];
}