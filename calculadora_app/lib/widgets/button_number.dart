import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final int? number;
  final String? operadorLogico;
  final Function() update;

  MyButton({
    this.number,
    this.operadorLogico,
    required this.update,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: update,
      child: Container(
        height: 70,
        width: 70,
        color: Colors.white,
        margin: EdgeInsets.all(8),
        child: Center(
          child: Text(
            number != null
                ? '$number'
                : operadorLogico != null
                    ? '$operadorLogico'
                    : '',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
