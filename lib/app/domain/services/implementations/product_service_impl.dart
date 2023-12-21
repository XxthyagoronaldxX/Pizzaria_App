import 'package:restaurantegulaapp/app/domain/models/product_model.dart';
import 'package:restaurantegulaapp/app/domain/repositories/product_repository.dart';
import 'package:restaurantegulaapp/app/domain/services/product_service.dart';

class ProductServiceImpl implements IProductService {
  final IProductRepository productRepository;

  ProductServiceImpl(this.productRepository);

  @override
  Stream<List<ProductModel>> findAllProducts() {
    return productRepository.findAll();
  }
}