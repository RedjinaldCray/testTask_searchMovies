import 'package:flutter/material.dart';
import 'package:search_movies/src/presentation/components/clear_ink_well.dart';

class AppScaleAnimation extends StatefulWidget {
  const AppScaleAnimation({Key? key, required this.child, required this.onTap})
      : super(key: key);

  final Widget child;
  final void Function()? onTap;

  @override
  State<AppScaleAnimation> createState() => _AppScaleAnimationState();
}

class _AppScaleAnimationState extends State<AppScaleAnimation> {
  double scale = 1;

  @override
  Widget build(BuildContext context) => ClearInkWell(
        onTap: () async {
          if (widget.onTap != null) {
            setState(() {
              scale = 0.85;
            });
            await Future.delayed(const Duration(milliseconds: 200));
            setState(() {
              scale = 1;
            });
            widget.onTap!();
          }
        },
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 100),
          child: widget.child,
        ),
      );
}
