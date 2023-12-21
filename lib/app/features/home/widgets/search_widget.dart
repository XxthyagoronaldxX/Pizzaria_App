import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(244, 242, 240, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Buscar comida",
                  hintStyle: themeData.textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: themeData.textTheme.titleMedium?.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
