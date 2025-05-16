class Operacion {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
}

class OperacionExtendida extends Operacion {
  @override
  double suma(double a, double b) {
    print('Ejecutando suma extendida');
    return super.suma(a, b);
  }
}

void main() {
  final op = OperacionExtendida();

  print('Suma: ${op.suma(10, 4)}');           // Muestra mensaje + 14
  print('Resta: ${op.resta(10, 4)}');         // 6
  print('Multiplicación: ${op.multiplicacion(10, 4)}'); // 40
}
