import 'package:flutter/material.dart';
import '../../../../components/product_card.dart';
import '../../../../models/Product.dart';
import '../../../details/details_screen.dart';
import '../../../products/products_screen.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  int heroId;
  PopularProducts({
    Key? key,
    required this.heroId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            press: () {
              Navigator.pushNamed(context, ProductsScreen.routeName);
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    Product product = demoProducts[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        heroId: heroId,
                        product: demoProducts[index],
                        onPress: () => Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              heroId: heroId,
                              product: product),
                        ),
                      ),
                    );
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
