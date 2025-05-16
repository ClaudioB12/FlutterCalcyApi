import 'operacion.dart';

class OperacionImplementada extends Operacion {
  @override
  double suma(double a, double b) => a + b;

  @override
  double resta(double a, double b) => a - b;

  @override
  double multiplicacion(double a, double b) => a * b;
}
