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
        title: Text(
          'Lista de produtos',
          style: TextStyle(
            color: Color(0xFF4E8179),
            fontWeight: FontWeight.bold,
          ),
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
            return ListView.builder(
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
                      child: Row(
                        children: [
                          Icon(
                            Icons.grain,
                            color: Color(0xFF4E8179),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.products[index].name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4E8179),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  controller.products[index].description,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF4E8179),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'R\$ ${controller.products[index].kg}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4E8179),
                            ),
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
