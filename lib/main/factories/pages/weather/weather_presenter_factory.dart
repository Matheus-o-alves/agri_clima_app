import '../../../../data/http/http_client.dart';
import '../../../../data/usecases/remote_weather_request.dart';
import '../../../../presentation/presenters/getx_weather_page_presenter.dart';
import '../../../../ui/pages/home/weather_page_presenter.dart';

WeatherPagePresenter makeGetXWeatherPresenter() {
  return GetXWeatherPresenter(weatherResquest: RemoteWeatherResquest());
}
