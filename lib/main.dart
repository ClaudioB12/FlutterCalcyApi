import 'package:flatter_ejemplo/login_screen.dart';
import 'package:flatter_ejemplo/screen/pantalla1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Turismo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const BienvenidoScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
