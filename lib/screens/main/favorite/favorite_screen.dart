import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_2024/components/product_card.dart';
import 'package:shopping_app_2024/models/Product.dart';

import '../../details/details_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 20, bottom: 6),
            child: Row(
              children: [
                Text(
                  "Favorites",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) => ProductCard(
                  heroId: 0,
                  product: demoProducts[index],
                  onPress: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index], heroId: 0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
