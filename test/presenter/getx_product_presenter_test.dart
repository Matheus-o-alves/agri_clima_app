// import 'package:agri_clima_app/data/usecases/remote_product.dart';
// import 'package:agri_clima_app/presentation/presenters/getx_product_presenter.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:get/get.dart';
// import 'package:mockito/mockito.dart';
// class MockRemoteProductRequest extends Mock implements RemoteProductRequest {}

// void main() {
//   group('ProductListController', () {
//     late ProductListController controller;
//     late MockRemoteProductRequest mockRequest;

//     setUp(() {
//       mockRequest = MockRemoteProductRequest();
//       controller = ProductListController();
//       controller.onInit();
//     });

//     test('syncProducts should update products list when API call succeeds', () async {
//       final products = [        Product(id: 1, name: 'Product 1', description: 'Description 1'),        Product(id: 2, name: 'Product 2', description: 'Description 2'),        Product(id: 3, name: 'Product 3', description: 'Description 3'),      ];
//       when(mockRequest.fetchProducts()).thenAnswer((_) async => products);

//       await controller.syncProducts();

//       expect(controller.isLoading.value, false);
//       expect(controller.hasError.value, false);
//       expect(controller.errorMessage.value, '');
//       expect(controller.products.length, 3);
//       expect(controller.isSynced.value, true);
//     });

//     test('syncProducts should set error state when API call fails', () async {
//       when(mockRequest.fetchProducts()).thenThrow(Exception('API call failed'));

//       await controller.syncProducts();

//       expect(controller.isLoading.value, false);
//       expect(controller.hasError.value, true);
//       expect(controller.errorMessage.value, 'Erro inesperado: Exception: API call failed');
//       expect(controller.products.isEmpty, true);
//       expect(controller.isSynced.value, false);
//     });

//     test('syncProducts should set isLoading state to false regardless of API call success or failure', () async {
//       when(mockRequest.fetchProducts()).thenAnswer((_) async => []);

//       await controller.syncProducts();

//       expect(controller.isLoading.value, false);

//       reset(mockRequest);

//       when(mockRequest.fetchProducts()).thenThrow(Exception('API call failed'));

//       await controller.syncProducts();

//       expect(controller.isLoading.value, false);
//     });
//   });
// }
