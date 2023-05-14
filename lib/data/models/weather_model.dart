import '../../domain/entities/weather_entity.dart';

class WeatherModel {
  final String country;
  final String date;
  final String text;

  WeatherModel({
    required this.country,
    required this.date,
    required this.text,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      country: json['country'],
      date: json['date'],
      text: json['text'],
    );
  }

  WeatherEntity toEntity() =>
      WeatherEntity(country: country, date: date, text: text);
  Map toJson() => {'country': country, 'date': date, 'text': text};
}
