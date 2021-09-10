import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String number;

  const Button({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(8), // um padding, uma divisão dos itens.
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber[900],
      ),
      child: Center(
        // Widget feito para centalizar outro widget.
        child: Text(
          number,
          style: const TextStyle(
            fontSize: 45,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
