class WeatherEntity {
  final String? country;
  final String? date;
  final String? text;

  List get props => [country, date, text];
  const WeatherEntity({this.country, this.date, this.text});
}
