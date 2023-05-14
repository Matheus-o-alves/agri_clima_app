import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../data/models/product_model.dart';
import '../../data/usecases/remote_sementes.dart';
import '../../data/usecases/remote_weather_request.dart';

class ProductListController extends GetxController {
  var isLoading = true.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;
  var products = <Product>[].obs;
  Sementes request = Sementes();

  @override
  void onInit() {
    super.onInit();
    requestProducts();
  }

  void requestProducts() async {
    try {
      List<Product> grao = await request.fetchProducts();
      for (var element in grao) {
        products.add(element);
      }
    } catch (e) {
      hasError.value = true;
      errorMessage.value = 'Erro inesperado: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
