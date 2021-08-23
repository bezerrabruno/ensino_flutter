import 'package:flutter/material.dart';

import 'pages/home_page.dart';

// A base do app.
// Inicia o Material e a page inicial.
// E em alguns casos outros componentes.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: HomePage(),
    );
  }
}
