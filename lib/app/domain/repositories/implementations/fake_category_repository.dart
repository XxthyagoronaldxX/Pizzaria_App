import 'package:restaurantegulaapp/app/domain/models/category_model.dart';
import 'package:restaurantegulaapp/app/domain/repositories/category_repository.dart';

class FakeCategoryRepository implements ICategoryRepository {
  final List<CategoryModel> _categories = [
    CategoryModel(name: "Fast Food", imageUri: ""),
    CategoryModel(name: "Tradicional", imageUri: "")
  ];

  @override
  Stream<List<CategoryModel>> findAll() {
    return Stream.fromIterable([_categories]);
  }
}