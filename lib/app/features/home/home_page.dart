import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/domain/models/product_model.dart';
import 'package:restaurantegulaapp/app/features/home/home_controller.dart';
import 'package:restaurantegulaapp/app/features/home/widgets/category_list_widget.dart';
import 'package:restaurantegulaapp/app/features/home/widgets/header_options_widget.dart';
import 'package:restaurantegulaapp/app/features/home/widgets/product_card_widget.dart';
import 'package:restaurantegulaapp/app/features/home/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<HomeController>();
    final mediaQuery = MediaQuery.of(context);
    final themeData = Theme.of(context);

    double avaibleHeight = mediaQuery.size.height;
    double avaibleWidth = mediaQuery.size.width;
    double spacingHeight = avaibleHeight * 0.04;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 251, 251, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          height: avaibleHeight,
          width: avaibleWidth,
          child: Stack(
            children: [
              Positioned(
                bottom: 100,
                child: Transform(
                  transform: Matrix4.diagonal3Values(20, 20, 1),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 150,
                child: Transform(
                  transform: Matrix4.diagonal3Values(-20, -10, 1),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
              ),
              Column(
                children: [
                  const HeaderOptionsWidget(),
                  SizedBox(height: spacingHeight),
                  Text(
                    "Bem-vindo ao Restaurante Gula!",
                    style: themeData.textTheme.titleMedium?.copyWith(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: spacingHeight),
                  const SearchWidget(),
                  SizedBox(height: spacingHeight),
                  CategoryListWidget(
                    avaibleHeight: avaibleHeight * 0.065,
                    avaibleWidth: avaibleWidth * 0.32,
                  ),
                  SizedBox(height: spacingHeight),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: avaibleHeight * 0.45,
                      width: avaibleWidth,
                      child: StreamBuilder<List<ProductModel>>(
                        stream: controller.findAllProducts(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) return const SizedBox();

                          List<ProductModel> data = snapshot.data!;

                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length,
                            itemBuilder: (ctx, index) {
                              ProductModel productModel = data[index];

                              return ProductCardWidget(productModel);
                            },
                          );
                        }
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
