import 'package:flutter/material.dart';

import 'core/core.dart';
import 'pages/pages.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground App',
      themeMode: TypeMode.theme,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreenPage(),
        '/home': (context) => HomePage(toogleTheme: toogleTheme),
        '/exercises': (context) => ExercisesPage(toogleTheme: toogleTheme),
      },
    );
  }
  void toogleTheme() => setState(() => TypeMode.themeToogle());
}

class TypeMode {
  static ThemeMode theme = ThemeMode.dark;

  static themeToogle() {
    if (theme == ThemeMode.dark) {
      theme = ThemeMode.light;
    } else {
      theme = ThemeMode.dark;
    }
  }
}
