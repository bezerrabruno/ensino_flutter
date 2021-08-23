import 'package:calculadora_app/widgets/button_number.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late int valor1, valor2;
  late String sinal;
  late String resultado;
  late bool verificador;

  @override
  void initState() {
    super.initState();
    this.valor1 = 0;
    this.valor2 = 0;
    this.sinal = '';
    this.resultado = '';
    this.verificador = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: _container1(),
            ),
            SizedBox(
              height: 10,
            ),
            _container2(),
          ],
        ),
      ),
    );
  }

  Widget _container1() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$valor1',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
          verificador == true
              ? Text(
                  '$sinal',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                )
              : SizedBox(),
          verificador == true
              ? Text(
                  '$valor2',
                  style: TextStyle(
                    fontSize: 60,
                  ),
                )
              : SizedBox(),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '=',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$resultado',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _container2() {
    return Container(
      height: 430,
      width: double.maxFinite,
      color: Colors.grey[400],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                operadorLogico: 'C',
                update: () => setState(() {
                  this.valor1 = 0;
                  this.valor2 = 0;
                  this.sinal = '';
                  this.resultado = '';
                  this.verificador = false;
                }),
              ),
              MyButton(
                operadorLogico: 'X',
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse(this
                        .valor1
                        .toString()
                        .substring(0, this.valor1.toString().length - 1));
                  } else {
                    this.valor2 = int.parse(this
                        .valor2
                        .toString()
                        .substring(0, this.valor2.toString().length - 1));
                  }
                }),
              ),
              MyButton(
                operadorLogico: '%',
                update: () => setState(() {
                  this.sinal = '%';
                  this.verificador = true;
                }),
              ),
              MyButton(
                operadorLogico: '/',
                update: () => setState(() {
                  this.sinal = '/';
                  this.verificador = true;
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                number: 7,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}7');
                  } else {
                    this.valor2 = int.parse('${this.valor2}7');
                  }
                }),
              ),
              MyButton(
                number: 8,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}8');
                  } else {
                    this.valor2 = int.parse('${this.valor2}8');
                  }
                }),
              ),
              MyButton(
                number: 9,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}9');
                  } else {
                    this.valor2 = int.parse('${this.valor2}9');
                  }
                }),
              ),
              MyButton(
                operadorLogico: '*',
                update: () => setState(() {
                  this.sinal = '*';
                  this.verificador = true;
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                number: 4,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}4');
                  } else {
                    this.valor2 = int.parse('${this.valor2}4');
                  }
                }),
              ),
              MyButton(
                number: 5,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}5');
                  } else {
                    this.valor2 = int.parse('${this.valor2}5');
                  }
                }),
              ),
              MyButton(
                number: 6,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}6');
                  } else {
                    this.valor2 = int.parse('${this.valor2}6');
                  }
                }),
              ),
              MyButton(
                operadorLogico: '+',
                update: () => setState(() {
                  this.sinal = '+';
                  this.verificador = true;
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                number: 1,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}1');
                  } else {
                    this.valor2 = int.parse('${this.valor2}1');
                  }
                }),
              ),
              MyButton(
                number: 2,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}2');
                  } else {
                    this.valor2 = int.parse('${this.valor2}2');
                  }
                }),
              ),
              MyButton(
                number: 3,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}3');
                  } else {
                    this.valor2 = int.parse('${this.valor2}3');
                  }
                }),
              ),
              MyButton(
                operadorLogico: '-',
                update: () => setState(() {
                  this.sinal = '-';
                  this.verificador = true;
                }),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                number: 0,
                update: () => setState(() {
                  if (this.verificador == false) {
                    this.valor1 = int.parse('${this.valor1}0');
                  } else {
                    this.valor2 = int.parse('${this.valor2}0');
                  }
                }),
              ),
              MyButton(
                operadorLogico: '=',
                update: () => setState(() {
                  switch (this.sinal) {
                    case '':
                      resultado = valor1.toString();
                      break;
                    case '/':
                      resultado = (valor1 / valor2).toStringAsFixed(4);
                      break;
                    case '*':
                      resultado = (valor1 * valor2).toStringAsPrecision(8);
                      break;
                    case '+':
                      resultado = (valor1 + valor2).toStringAsPrecision(8);
                      break;
                    case '-':
                      resultado = (valor1 - valor2).toStringAsPrecision(8);
                      break;
                  }
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
