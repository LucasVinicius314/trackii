import 'package:flutter/material.dart';
import 'package:trackii/modules/login_page.dart';
import 'package:trackii/modules/main_page.dart';
import 'package:trackii/modules/splash_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  ThemeData _getTheme() {
    final colorScheme = ThemeData.dark().colorScheme.copyWith(
          primary: Colors.grey.shade800,
          onBackground: Colors.white,
          onSurface: Colors.white,
        );

    final theme = ThemeData.dark().copyWith(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(16),
          ),
        ),
      ),
    );

    final textTheme = ThemeData(fontFamily: 'Poppins').textTheme;

    return theme.copyWith(
      textTheme: textTheme.copyWith(
        bodyText1: textTheme.bodyText1
            ?.copyWith(color: theme.textTheme.bodyText1?.color),
        bodyText2: textTheme.bodyText2
            ?.copyWith(color: theme.textTheme.bodyText2?.color),
        button:
            textTheme.button?.copyWith(color: theme.textTheme.button?.color),
        caption:
            textTheme.caption?.copyWith(color: theme.textTheme.caption?.color),
        headline1: textTheme.headline1
            ?.copyWith(color: theme.textTheme.headline1?.color),
        headline2: textTheme.headline2
            ?.copyWith(color: theme.textTheme.headline2?.color),
        headline4: textTheme.headline4
            ?.copyWith(color: theme.textTheme.headline4?.color),
        headline5: textTheme.headline5
            ?.copyWith(color: theme.textTheme.headline5?.color),
        headline6: textTheme.headline6
            ?.copyWith(color: theme.textTheme.headline6?.color),
        overline: textTheme.overline
            ?.copyWith(color: theme.textTheme.overline?.color),
        subtitle1: textTheme.subtitle1
            ?.copyWith(color: theme.textTheme.subtitle1?.color),
        subtitle2: textTheme.subtitle2
            ?.copyWith(color: theme.textTheme.subtitle2?.color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trackii',
      debugShowCheckedModeBanner: false,
      theme: _getTheme(),
      routes: {
        SplashPage.route: (context) => const SplashPage(),
        LoginPage.route: (context) => const LoginPage(),
        MainPage.route: (context) => const MainPage(),
      },
    );
  }
}
