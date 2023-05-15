// import 'dart:convert';

// import 'package:agri_clima_app/data/models/product_model.dart';
// import 'package:agri_clima_app/data/usecases/remote_product.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:http/http.dart' as http;

// class MockHttpClient extends Mock implements http.Client {}

// void main() {
//   group('RemoteProductRequest', () {
//     late RemoteProductRequest request;
//     late http.Client httpClient;

//     setUp(() {
//       httpClient = MockHttpClient();
//       request = RemoteProductRequest();
//     });

//     test(
//         'should return a list of products when the http call completes successfully',
//         () async {
//       final products = <Product>[
//         Product(id: '1', name: 'Product 1', kg: '100.0', description: ''),
//         Product(id: '2', name: 'Product 2', kg: '200.0', description: ''),
//         Product(id: '3', name: 'Product 3', kg: '300.0', description: ''),
//       ];
//       final response = http.Response(jsonEncode(products), 200);
//       when(httpClient.get(Uri.parse(
//               'https://64606651fe8d6fb29e302b24.mockapi.io/sementes')))
//           .thenAnswer((_) async => response);

//       final result = await request.fetchProducts();

//       expect(result, equals(products));
//     });

//     test('should throw an exception when the http call fails', () async {
//       final response = http.Response('Erro ao buscar produtos.', 500);
//       when(httpClient.get(Uri.parse(
//               'https://64606651fe8d6fb29e302b24.mockapi.io/sementes')))
//           .thenAnswer((_) async => response);

//       final call = request.fetchProducts;

//       expect(call(), throwsException);
//     });
//   });
// }
