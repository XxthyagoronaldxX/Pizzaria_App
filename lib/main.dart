import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/restaurante_gula_module.dart';
import 'package:restaurantegulaapp/app/restaurante_gula_widget.dart';

void main() {
  runApp(ModularApp(module: RestauranteGulaModule(), child: const RestauranteGulaWidget()));
}
