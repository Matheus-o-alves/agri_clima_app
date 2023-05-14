import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class Sementes {
  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(
          Uri.parse('https://64606651fe8d6fb29e302b24.mockapi.io/sementes'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return List<Product>.from(
            jsonData.map((product) => Product.fromJson(product)));
      } else {
        throw Exception('Erro ao buscar produtos.');
      }
    } catch (e) {
      throw Exception('Erro ao buscar produtos.');
    }
  }
}
