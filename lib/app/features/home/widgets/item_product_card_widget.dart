import 'package:flutter/material.dart';

class ItemProductCardWidget extends StatelessWidget {
  final double cardHeight;

  const ItemProductCardWidget({super.key, required this.cardHeight});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: Container(
          height: cardHeight * 0.3,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.4),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Produto - Preço",
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.titleMedium?.copyWith(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                height: double.infinity,
                width: 60,
                child: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 24,
                ),
              )
            ],
          ),
        ),
        child: Container(
          color: Colors.grey,
          height: cardHeight,
        ),
      ),
    );
  }
}
