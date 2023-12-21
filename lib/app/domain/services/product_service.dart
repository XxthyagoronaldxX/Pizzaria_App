import 'package:restaurantegulaapp/app/domain/models/product_model.dart';

abstract class IProductService {
  Stream<List<ProductModel>> findAllProducts();
}