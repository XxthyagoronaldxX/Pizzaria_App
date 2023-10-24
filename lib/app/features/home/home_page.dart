import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:restaurantegulaapp/app/features/home/widgets/item_product_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: Remover barrar de informação do Celular.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double avaibleHeight = mediaQuery.size.height - kToolbarHeight;
    double avaibleWidth = mediaQuery.size.width;
    double spacingHeight = avaibleHeight * 0.04;
    ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        height: avaibleHeight,
        width: avaibleWidth,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                CircleAvatar(
                  child: Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
            SizedBox(height: spacingHeight),
            Text(
              "Bem-vindo ao Restaurante Gula!",
              style: themeData.textTheme.titleMedium?.copyWith(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: spacingHeight),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 242, 240, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 48,
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Buscar comida",
                            hintStyle:
                                themeData.textTheme.titleMedium?.copyWith(
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: spacingHeight),
            SizedBox(
              height: avaibleHeight * 0.065,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromRGBO(254, 204, 76, 1),
                        )),
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 20),
                    width: avaibleWidth * 0.27,
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
                                  spreadRadius: 5,
                                ),
                              ]),
                            ),
                            Image.network(
                              "https://img.icons8.com/emoji/48/hamburger-emoji.png",
                            ),
                          ],
                        ),
                        Text(
                          "Fast Food",
                          style: themeData.textTheme.titleMedium?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: spacingHeight),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 2,
                    itemBuilder: (ctx, index) {
                      return Container(
                        color: Colors.red,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
