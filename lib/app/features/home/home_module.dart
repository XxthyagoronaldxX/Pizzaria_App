import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/domain/repositories/category_repository.dart';
import 'package:restaurantegulaapp/app/domain/repositories/implementations/fake_category_repository.dart';
import 'package:restaurantegulaapp/app/domain/repositories/implementations/fake_product_repository.dart';
import 'package:restaurantegulaapp/app/domain/repositories/product_repository.dart';
import 'package:restaurantegulaapp/app/domain/services/category_service.dart';
import 'package:restaurantegulaapp/app/domain/services/implementations/category_service_impl.dart';
import 'package:restaurantegulaapp/app/domain/services/implementations/product_service_impl.dart';
import 'package:restaurantegulaapp/app/domain/services/product_service.dart';
import 'package:restaurantegulaapp/app/features/home/home_controller.dart';
import 'package:restaurantegulaapp/app/features/home/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.add<ICategoryRepository>(FakeCategoryRepository.new);
    i.add<IProductRepository>(FakeProductRepository.new);
    i.add<ICategoryService>(CategoryServiceImpl.new);
    i.add<IProductService>(ProductServiceImpl.new);
    i.addSingleton<HomeController>(HomeController.new);
  }
  
  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (ctx) => const HomePage());
  }
}