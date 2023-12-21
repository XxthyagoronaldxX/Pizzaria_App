import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/features/login/login_controller.dart';
import 'package:restaurantegulaapp/app/features/login/login_page.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<LoginController>(LoginController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (ctx) => const LoginPage());
  }
}