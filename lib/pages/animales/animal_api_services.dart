import 'dart:convert';
import 'package:ganaderia/config/api_config.dart';
import 'package:http/http.dart' as http;

class AnimalService {
  Future<List<dynamic>> fetchAnimales(String token) async {
    final response = await http.get(
      Uri.parse(ApiConfig.animalesEndpoint),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    print("lol" + token);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al cargar los datos');
    }
  }
}
