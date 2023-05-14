import 'package:get/get.dart';

import '../../domain/usecases/weather_request.dart';
import '../../ui/pages/home/weather_page_presenter.dart';

class GetXWeatherPresenter extends GetxController
    implements WeatherPagePresenter {
  final WeatherResquest weatherResquest;

  GetXWeatherPresenter({required WeatherResquest weatherResquest})
      : weatherResquest = weatherResquest;

  @override
  Future<void> requestWeather(String country) async {
    try {
      final result = await weatherResquest.requestWeather(country: country);
      print(result);
      // Fazer algo com o resultado, como atualizar a tela
    } catch (error) {
      print(error);
      // Fazer algo com o erro, como exibir uma mensagem de erro na tela
    }
  }
}
