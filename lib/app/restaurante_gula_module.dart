import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/restaurante_gula_widget.dart';

class RestauranteGulaModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child("/", child: (ctx) => const RestauranteGulaWidget());
  }
}