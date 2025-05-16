abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
}

class OperacionImplementada extends Operacion {
  @override
  double suma(double a, double b) => a + b;

  @override
  double resta(double a, double b) => a - b;

  @override
  double multiplicacion(double a, double b) => a * b;
}

void main() {
  final op = OperacionImplementada();

  print('Suma: ${op.suma(5, 3)}');            // 8
  print('Resta: ${op.resta(5, 3)}');          // 2
  print('Multiplicación: ${op.multiplicacion(5, 3)}');  // 15
}
