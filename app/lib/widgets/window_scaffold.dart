import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowScaffold extends StatelessWidget {
  const WindowScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors =
        WindowButtonColors(iconNormal: Theme.of(context).primaryColorLight);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: WindowTitleBarBox(
            child: ClipRRect(
              child: Row(
                children: [
                  Expanded(child: MoveWindow()),
                  MinimizeWindowButton(
                    animate: false,
                    colors: colors,
                  ),
                  MaximizeWindowButton(
                    animate: false,
                    colors: colors,
                  ),
                  CloseWindowButton(
                    animate: false,
                    colors: colors,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}
