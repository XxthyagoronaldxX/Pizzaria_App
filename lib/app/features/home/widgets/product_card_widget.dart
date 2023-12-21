import 'package:flutter/material.dart';
import 'package:restaurantegulaapp/app/domain/models/product_model.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel productModel;

  const ProductCardWidget(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final themeData = Theme.of(context);
    double avaibleHeight = mediaQuery.size.height;

    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 25),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.amber,  // Cor da borda
                  width: 1.0, // Espessura da borda
                ),
              ),
              height: avaibleHeight * 0.38,
              padding: EdgeInsets.only(top: avaibleHeight * 0.08),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productModel.name,
                      style: themeData.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      productModel.description,
                      textAlign: TextAlign.center,
                      style: themeData.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: avaibleHeight * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$ ",
                                      style:
                                          themeData.textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    TextSpan(
                                      text: productModel.price.toString(),
                                      style:
                                          themeData.textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.amber,
                              child: IconButton(
                                onPressed: () => {},
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.network(
                  "https://img.icons8.com/papercut/120/rice-bowl.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
