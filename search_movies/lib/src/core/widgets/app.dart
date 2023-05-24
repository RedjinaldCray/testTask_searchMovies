import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_movies/src/core/router/app_router.dart';
import 'package:search_movies/src/core/widgets/app_injectable.dart';

class SearchMoviesApp extends StatefulWidget {
  const SearchMoviesApp({super.key});

  @override
  State<SearchMoviesApp> createState() => _SearchMoviesAppState();
}

final _appRouter = AppRouter();

class _SearchMoviesAppState extends State<SearchMoviesApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => AppInjectable(
        child: MaterialApp.router(
          title: 'Search Movies',
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        ),
      );
}
