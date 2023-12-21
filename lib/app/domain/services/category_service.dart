import 'package:restaurantegulaapp/app/domain/models/category_model.dart';

abstract class ICategoryService {
  Stream<List<CategoryModel>> findAllCategories();
}