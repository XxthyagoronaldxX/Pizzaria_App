import 'package:restaurantegulaapp/app/domain/models/category_model.dart';

abstract class ICategoryRepository {
  Stream<List<CategoryModel>> findAll();
}