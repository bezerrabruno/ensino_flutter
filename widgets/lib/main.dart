import 'package:flutter/material.dart';

import 'home_page.dart';

// Inicia o App.
void main() => runApp(AppWidget());

// A base do app.
// Inicia o Material e a page inicial.
// E em alguns casos outros componentes como o theme por exemplo.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Visual',
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
