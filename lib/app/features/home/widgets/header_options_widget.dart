import 'package:flutter/material.dart';

class HeaderOptionsWidget extends StatelessWidget {
  const HeaderOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ),
        Stack(
          children: [
            const Card(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text(
                  "0",
                  style: themeData.textTheme.titleMedium?.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
