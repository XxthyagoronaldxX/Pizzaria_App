import 'package:restaurantegulaapp/app/domain/models/category_model.dart';
import 'package:restaurantegulaapp/app/domain/repositories/category_repository.dart';
import 'package:restaurantegulaapp/app/domain/services/category_service.dart';

class CategoryServiceImpl implements ICategoryService {
  final ICategoryRepository categoryRepository;

  CategoryServiceImpl(this.categoryRepository);

  @override
  Stream<List<CategoryModel>> findAllCategories() {
    return categoryRepository.findAll();
  }
}