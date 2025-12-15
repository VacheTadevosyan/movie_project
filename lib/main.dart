import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_project/presentation/screens/favorites/bloc/favorite_bloc.dart';

import 'app_manager.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp( MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => FavoriteBloc()
          ..add(const FavoriteEvent.load()),
      ),
    ],
    child: MyApp(),
  ),);
}



