import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/features/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<LoginController>();
    final mediaOf = MediaQuery.of(context);
    final themeOf = Theme.of(context);
    final widthAvaiable = mediaOf.size.width;
    final heightAvaiable = mediaOf.size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: widthAvaiable * 0.6,
          height: heightAvaiable * 0.4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white12,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "RestauranteGula",
                style: themeOf.textTheme.titleMedium?.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: controller.emailTextController,
                decoration: InputDecoration(
                  label: Text(
                    "E-mail:",
                    style: themeOf.textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  hintText: "Ex.: Guloso",
                  hintStyle: themeOf.textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: controller.senhaTextController,
                decoration: InputDecoration(
                  label: Text(
                    "Senha:",
                    style: themeOf.textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  hintText: "Ex.: Guloso",
                  hintStyle: themeOf.textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(254, 204, 76, 1),
                  ),
                  fixedSize: MaterialStateProperty.all(
                    Size(widthAvaiable * 0.8, heightAvaiable * 0.04),
                  ),
                ),
                child: Text(
                  "Entrar",
                  style: themeOf.textTheme.titleMedium?.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => {},
                child: Text(
                  "cadastre-se",
                  style: themeOf.textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
