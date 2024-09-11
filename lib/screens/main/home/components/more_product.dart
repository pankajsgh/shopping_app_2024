import 'package:flutter/material.dart';
import '../../../../components/product_card.dart';
import '../../../../models/Product.dart';
import '../../../details/details_screen.dart';
import '../../../products/products_screen.dart';
import 'section_title.dart';

class MoreProducts extends StatelessWidget {
  int heroId;
  MoreProducts({
    Key? key,
    required this.heroId,
  }) : super(key: key);

  List<Product> listProducts =[];



  @override
  Widget build(BuildContext context) {
    for(var x in jasonProductData["products"])
      {
        Product product = Product(id: x["id"], images: x["images"], colors: x["colors"]?? [], title: x["title"], price: x["price"], description: x["description"]);
      }

    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "More Products",
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
                jasonProductData["products"].length,
                (index) {
                  var x = jasonProductData["products"][index];
                  Product product = Product(id: x["id"], images: x["images"], colors: x["colors"]?? [], title: x["title"], price: x["price"], description: x["description"]);

                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ProductCard(
                      heroId: heroId,
                      product: product,
                      onPress: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(
                            heroId: heroId,
                            product: product),
                      ),
                    ),
                  );;
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


