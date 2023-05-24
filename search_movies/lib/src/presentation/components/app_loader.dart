import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) => const Center(
      child: SizedBox(
          width: 30,
          height: 30,
          child: FittedBox(child: CircularProgressIndicator())));
}
