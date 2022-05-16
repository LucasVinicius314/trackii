import 'package:flutter/material.dart';
import 'package:trackii/modules/main_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trackii',
      theme: ThemeData.dark().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.all(16),
            ),
          ),
        ),
      ),
      routes: {
        MainPage.route: (context) => const MainPage(),
      },
    );
  }
}
