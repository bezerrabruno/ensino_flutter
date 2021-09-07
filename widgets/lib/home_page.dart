import 'package:flutter/material.dart';
import 'package:widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold: A base da sua tela.
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // AppBar: A parte superior da sua tela.
        title: Text(
          'Calculadora',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        // Column: Widget de empilhamento de widgets.
        children: [
          Container(
            // Container: Widget que você provavelmente mais vai usar pois serve para praticamente tudo.
            height: 170,
            width: double.maxFinite,
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '10',
                      style: TextStyle(
                        color: Colors.amber[900],
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        color: Colors.amber[900],
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                        color: Colors.amber[900],
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  '=',
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '35',
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            // Divider: Widget que gera uma divisão.
            color: Colors.amber[900],
            thickness: 2,
            height: 50,
          ),
          SizedBox(
            // SizedBox: Widget de espasamento, tanto entre quanto para os proprios widgets.
            height: 490,
            width: double.maxFinite,
            child: Column(
              children: [
                Row(
                  // Row: Widget de emfileiramento de widgets.
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(number: 'C'),
                    Button(number: 'X'),
                    Button(number: '%'),
                    Button(number: '/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(number: '7'),
                    Button(number: '8'),
                    Button(number: '9'),
                    Button(number: '*'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(number: '4'),
                    Button(number: '5'),
                    Button(number: '6'),
                    Button(number: '-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(number: '1'),
                    Button(number: '2'),
                    Button(number: '3'),
                    Button(number: '+'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(number: '0'),
                    Button(number: ','),
                    Button(number: '='),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
