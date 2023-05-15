import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'factories/pages/login_page_factory.dart';
import 'factories/pages/sementes/sementes_page_factory.dart';
import 'factories/pages/weather/weather_page_factory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agri Clima',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/',
          page: makeLoginPage,
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/sementes-page',
          page: makeSementesPage,
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
