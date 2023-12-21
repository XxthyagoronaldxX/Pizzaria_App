import 'package:restaurantegulaapp/app/domain/models/product_model.dart';

abstract class IProductRepository {
  Stream<List<ProductModel>> findAll();
}
