import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double avaibleHeight = mediaQuery.size.height;
    double avaibleWidth = mediaQuery.size.width;
    double cardWidth = avaibleWidth * 0.5;
    double cardHeight = avaibleHeight * 0.2;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestauranteGula"),
        centerTitle: true,
      ),
      body: Container(
        height: avaibleHeight,
        width: avaibleWidth,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: cardHeight,
              width: cardWidth,
              child: GridTile(
                footer: Container(
                  padding: EdgeInsets.fromLTRB(0, cardHeight * 0.08, 0, cardHeight * 0.08),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Produto - Preço"),
                ),
                child: Container(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
