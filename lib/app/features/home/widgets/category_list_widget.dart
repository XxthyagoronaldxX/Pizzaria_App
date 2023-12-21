import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:restaurantegulaapp/app/domain/models/category_model.dart';
import 'package:restaurantegulaapp/app/features/home/home_controller.dart';

class CategoryListWidget extends StatelessWidget {
  final double avaibleHeight;
  final double avaibleWidth;

  const CategoryListWidget({
    super.key,
    required this.avaibleHeight,
    required this.avaibleWidth,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<HomeController>();
    ThemeData themeData = Theme.of(context);

    return SizedBox(
      height: avaibleHeight,
      child: StreamBuilder<List<CategoryModel>>(
        stream: controller.findAllCategories(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox();

          List<CategoryModel> categories = snapshot.data!;

          return ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              CategoryModel categoryModel = categories[index];

              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(254, 204, 76, 1),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(right: 20),
                width: avaibleWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset.fromDirection(1.55, 7),
                              blurRadius: 10,
                              spreadRadius: avaibleHeight * 0.04,
                            ),
                          ]),
                        ),
                        Image.network(
                          "https://img.icons8.com/emoji/48/hamburger-emoji.png",
                        ),
                      ],
                    ),
                    AutoSizeText(
                      categoryModel.name,
                      style: themeData.textTheme.titleMedium?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      ),
    );
  }
}
