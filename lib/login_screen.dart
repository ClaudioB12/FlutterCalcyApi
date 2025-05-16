import 'package:flutter/material.dart';
import 'package:flatter_ejemplo/modelo/JwtRequest.dart';
import '../servicio/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController correoController = TextEditingController();
  final TextEditingController claveController = TextEditingController();

  void _doLogin() async {
    final authService = AuthService();
    final jwtRequest = JwtRequest(
      correo: correoController.text,
      clave: claveController.text,
    );

    final success = await authService.login(jwtRequest);
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login exitoso!')),
      );
      // Aquí podrías navegar a otra pantalla, por ejemplo:
      // Navigator.pushReplacementNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Credenciales incorrectas')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: correoController,
              decoration: const InputDecoration(labelText: 'Correo'),
            ),
            TextField(
              controller: claveController,
              decoration: const InputDecoration(labelText: 'Clave'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _doLogin,
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
