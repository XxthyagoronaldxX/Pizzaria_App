import 'package:restaurantegulaapp/app/domain/models/category_model.dart';

class ProductModel {
  late String _id;
  final String name;
  final String description;
  final double price;
  final String imageUri;
  final CategoryModel categoryModel;

  ProductModel({
    String id = "",
    required this.name,
    required this.description,
    required this.price,
    required this.imageUri,
    required this.categoryModel,
  }) {
    _id = id;
  }
}
