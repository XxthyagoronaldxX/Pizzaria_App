import 'package:restaurantegulaapp/app/domain/models/category_model.dart';
import 'package:restaurantegulaapp/app/domain/models/product_model.dart';
import 'package:restaurantegulaapp/app/domain/repositories/product_repository.dart';

class FakeProductRepository implements IProductRepository {
  final List<ProductModel> _products = [
    ProductModel(
      name: "Miojo",
      description: "Miojo de frango com molho de maionese",
      price: 18.00,
      imageUri: "",
      categoryModel: CategoryModel(name: "Fast Food", imageUri: ""),
    )
  ];

  @override
  Stream<List<ProductModel>> findAll() {
    return Stream.fromIterable([_products]);
  }
}
