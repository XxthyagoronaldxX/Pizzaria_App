import 'package:restaurantegulaapp/app/domain/models/category_model.dart';
import 'package:restaurantegulaapp/app/domain/models/product_model.dart';
import 'package:restaurantegulaapp/app/domain/services/category_service.dart';
import 'package:restaurantegulaapp/app/domain/services/product_service.dart';

class HomeController {
  final ICategoryService _categoryService;
  final IProductService _productService;

  const HomeController(this._productService, this._categoryService);

  Stream<List<ProductModel>> findAllProducts() {
    return _productService.findAllProducts();
  }

  Stream<List<CategoryModel>> findAllCategories() {
    return _categoryService.findAllCategories();
  }
}