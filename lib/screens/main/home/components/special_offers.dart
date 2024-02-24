import 'package:flutter/material.dart';

import '../../../products/products_screen.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {

  int heroId;
  SpecialOffers({
    Key? key,
    required this.heroId,
  }) : super(key: key);

  List<Map<String, String>> catList = [
    {
      "image": "assets/images/Image Banner 2.png",
      "category": "Smartphone",
    },
    {
      "image": "assets/images/Image Banner 3.png",
      "category": "Fashion",
    },
    {
      "image": "assets/images/Grocery_shopping.jpg",
      "category": "Grocery",
    },
    {
      "image": "assets/images/movie_banner.jpeg",
      "category": "Movie Ticket",
    },

  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:  catList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return SpecialOfferCard(
                  image: catList[index]["image"]?? "",
                  category: catList[index]["category"]?? "",
                  numOfBrands: 18,
                  press: () {
                    Navigator.pushNamed(context, ProductsScreen.routeName);
                  },
                );
              }),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
