import '../../domain/entities/product_entity.dart';

class Product {
  final String id;
  final String name;

  final String description;
  final String kg;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.kg,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      kg: json['kg'],
    );
  }
  ProductEntity toEntity() =>
      ProductEntity(id: id, name: name, description: description, kg: kg);
}
