import 'package:agri_clima_app/main/factories/pages/weather/weather_presenter_factory.dart';
import 'package:flutter/material.dart';

import '../../../../ui/pages/home/weather_page.dart';

Widget makeWeatherPage() {
  return WeatherPage(presenter: makeGetXWeatherPresenter());
}
