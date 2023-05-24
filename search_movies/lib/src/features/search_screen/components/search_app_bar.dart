import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) => PreferredSize(
        preferredSize: preferredSize,
        child: LayoutBuilder(
            builder: (context, constraints) => Container(
                decoration:
                    const BoxDecoration(color: Colors.blueGrey, boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 1), blurRadius: 10),
                ]),
                height: preferredSize.height,
                width: constraints.maxWidth,
                child: child)),
      );
}
