import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class RestauranteGulaWidget extends StatelessWidget {
  const RestauranteGulaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "RestauranteGula",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          titleMedium: GoogleFonts.quicksand().copyWith(
            fontSize: 24,
          ),
        ),
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
