import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl;

  AuthService(this.baseUrl);

  Future<bool> register({
    required String nombre,
    required String apellido,
    required String email,
    required String contrasena,
    required String telefono,
    required String ciudad,
    required int rolId,
  }) async {
    final url = Uri.parse('$baseUrl/api/Acceso/Registrarse');

    final body = {
      'Nombre': nombre,
      'Apellido': apellido,
      'Email': email,
      'Contrasena': contrasena,
      'Telefono': telefono,
      'Ciudad': ciudad,
      'RolId': rolId,
    };

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return responseData['isSuccess'] ?? false;
      } else {
        print('Error en la API: ${response.statusCode}');
        return false;
      }
    } catch (error) {
      print('Error en la solicitud: $error');
      return false;
    }
  }
}
