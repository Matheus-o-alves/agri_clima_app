import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presentation/presenters/getx_sementes_presenter.dart';
import 'components/sementes_detail_page.dart';

class ProductListPage extends StatelessWidget {
  final controller = Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.agriculture,
                  color: Color(0xFF4E8179),
                  size: 40,
                ),
                SizedBox(width: 10),
                Text(
                  'Bem-vindo ao agronegócio',
                  style: TextStyle(
                    color: Color(0xFF4E8179),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return CircularProgressIndicator();
          } else if (controller.hasError.value) {
            return Text(
              controller.errorMessage.value,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            );
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
              ),
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsPage(
                          product: controller.products[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.grain,
                            color: Color(0xFF4E8179),
                            size: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            controller.products[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4E8179),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
