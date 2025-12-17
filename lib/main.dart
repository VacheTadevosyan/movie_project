import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_project/presentation/screens/favorites/bloc/favorite_bloc.dart';

import 'app_manager.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp( ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => FavoriteBloc()
            ..add(const FavoriteEvent.load()),
        ),
      ],
      child: MyApp(),
    ),
  ),);
}



