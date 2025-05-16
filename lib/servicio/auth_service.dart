import 'dart:convert';
import 'package:flatter_ejemplo/modelo/JwtRequest.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final _storage = const FlutterSecureStorage();
  final String _baseUrl = 'http://192.168.100.39:8090/api/auth/login';

  Future<bool> login(JwtRequest request) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(request.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['status'] == true && data.containsKey('token')) {
        await _storage.write(key: 'jwt', value: data['token']);
        return true;
      }
    }

    return false;
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'jwt');
  }

  Future<void> logout() async {
    await _storage.delete(key: 'jwt');
  }


}
