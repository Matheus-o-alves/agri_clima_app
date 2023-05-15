import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'factories/login/login_page_factory.dart';
import 'factories/product/product_page_factory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agri App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: makeLoginPage,
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: '/product-list-page',
          page: makeProductListPage,
          transition: Transition.fadeIn,
        ),
      ],
    );
  }
}
