import 'package:flutter/material.dart';

class ClearInkWell extends StatelessWidget {
  const ClearInkWell({Key? key, required this.child, this.onTap})
      : super(key: key);

  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: child,
      );
}
