import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RestauranteGulaWidget extends StatelessWidget {
  const RestauranteGulaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "RestauranteGula",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
