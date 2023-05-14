import '../entities/weather_entity.dart';

abstract class WeatherResquest {
  Future<WeatherEntity> requestWeather({
    String? country,
  });
}
