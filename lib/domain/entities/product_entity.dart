class ProductEntity {
  final String? id;
  final String? name;
  final String? description;
  final String? kg;
  List get props => [id, name, description, kg];

  const ProductEntity({this.id, this.name, this.description, this.kg});
}
