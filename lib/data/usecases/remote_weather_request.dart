import 'dart:convert';

import '../../domain/entities/weather_entity.dart';
import '../../domain/helpers/domain_error.dart';
import '../../domain/usecases/weather_request.dart';
import '../http/http_error.dart';
import '../models/weather_model.dart';
import 'package:http/http.dart' as http;

class RemoteWeatherResquest implements WeatherResquest {
  @override
  Future<WeatherEntity> requestWeather({
    String? country,
  }) async {
    try {
      final response = await http.get(
          Uri.parse('https://64606651fe8d6fb29e302b24.mockapi.io/sementes'));
      print(response.body);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data == null || data.isEmpty) {
          throw Exception('Corpo de resposta inválido');
        }
        return WeatherModel.fromJson(data).toEntity();
      } else {
        throw Exception('Falha na requisição: ${response.statusCode}');
      }
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.invalidCredentials
          : DomainError.unexpected;
    }
  }
}
