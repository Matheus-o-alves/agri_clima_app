import 'package:agri_clima_app/ui/pages/home/weather_page_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presentation/presenters/getx_weather_page_presenter.dart';

class WeatherPage extends StatefulWidget {
  final WeatherPagePresenter presenter;

  const WeatherPage({super.key, required this.presenter});
  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final TextEditingController _localityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _localityController,
              decoration: InputDecoration(labelText: 'Localidade'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final locality = _localityController.text;
                if (locality.isEmpty) {
                  Get.snackbar('Erro', 'Por favor, insira uma localidade');
                  return;
                }
                widget.presenter.requestWeather(locality);
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
