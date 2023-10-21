import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/features/home/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (ctx) => const HomePage());
  }
}