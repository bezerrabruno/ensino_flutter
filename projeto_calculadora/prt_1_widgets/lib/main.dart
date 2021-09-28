import 'package:flutter/material.dart';

import 'home_page.dart';

// Inicia o App.
void main() => runApp(const AppWidget());

// A base do app.
// Inicia o Material e a page inicial.
// E em alguns casos outros componentes como o theme por exemplo.
class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Visual',
      theme: ThemeData(
        primaryColor: Colors.amber[900],
        appBarTheme: AppBarTheme(
          color: Colors.amber[900],
        ),
      ),
      home: const HomePage(),
    );
  }
}
