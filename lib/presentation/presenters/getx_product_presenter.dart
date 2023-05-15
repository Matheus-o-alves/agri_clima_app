import 'package:get/get.dart';

import '../../data/models/product_model.dart';
import '../../data/usecases/remote_product.dart';

class ProductListController extends GetxController {
  var isLoading = true.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;
  var products = <Product>[].obs;
  var isSynced = false.obs;
  RemoteProductRequest request = RemoteProductRequest();

  @override
  void onInit() {
    super.onInit();
    isSynced.value = false;
  }

  void syncProducts() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      errorMessage.value = '';
      List<Product> fetchedProducts = await request.fetchProducts();
      products.clear();
      products.addAll(fetchedProducts);
      isSynced.value = true;
    } catch (e) {
      hasError.value = true;
      errorMessage.value = 'Erro inesperado: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
