import 'package:flutter/material.dart';
import 'operacion_impl.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculadoraPage(),
    );
  }
}

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String resultado = '';

  void calcular(String operacion) {
    final double num1 = double.tryParse(num1Controller.text) ?? 0;
    final double num2 = double.tryParse(num2Controller.text) ?? 0;
    final operacionImpl = OperacionImplementada();

    double res = 0;

    switch (operacion) {
      case 'suma':
        res = operacionImpl.suma(num1, num2);
        break;
      case 'resta':
        res = operacionImpl.resta(num1, num2);
        break;
      case 'multiplicacion':
        res = operacionImpl.multiplicacion(num1, num2);
        break;
    }

    setState(() {
      resultado = 'Resultado: $res';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(labelText: 'Número 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(labelText: 'Número 2'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => calcular('suma'),
                  child: Text('Sumar'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('resta'),
                  child: Text('Restar'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('multiplicacion'),
                  child: Text('Multiplicar'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(resultado, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
