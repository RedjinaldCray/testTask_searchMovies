import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:search_movies/src/core/services/api_service.dart';
import 'package:search_movies/src/core/utils/extenstions.dart';
import 'package:search_movies/src/data/movies/movies_repository.dart';

class AppInjectable extends StatelessWidget {
  const AppInjectable({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          RepositoryProvider<MoviesRepository>(
              create: (context) => MoviesApi(get<ApiService>())),
        ],
        child: child,
      );
}
