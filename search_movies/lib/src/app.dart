import 'dart:async';

import 'package:flutter/material.dart';
import 'package:search_movies/src/core/widgets/app.dart';

class App extends StatelessWidget {
  const App({super.key});

  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const App());
  }

  @override
  Widget build(BuildContext context) => const SearchMoviesApp();
}
