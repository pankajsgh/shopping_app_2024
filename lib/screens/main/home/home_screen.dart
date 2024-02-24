import 'package:flutter/material.dart';
import 'package:shopping_app_2024/config/constants.dart';
import '../../cart/cart_screen.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/icon_btn_with_counter.dart';
import 'components/popular_product.dart';
import 'components/recommended_product.dart';
import 'components/search_field.dart';
import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  HomeScreen({super.key});

  List<Widget> childWidget = [const SizedBox(height: 20),
    SpecialOffers(heroId: 0,),
    RecommendedProducts(heroId: 1,),
    PopularProducts(heroId: 2,),
    RecommendedProducts(heroId: 3,),
    PopularProducts(heroId: 4,),
  ];

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = kPrimaryColor;

    return Scaffold(
      body:  CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: backgroundColor,
            snap: false,
            pinned: true,
            floating: true,
            automaticallyImplyLeading: false,
            bottom: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 62,
              automaticallyImplyLeading: false,
              title: const SafeArea(child: SearchField()),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: backgroundColor,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:52.0),
                      child: Image.asset("assets/images/logo.png", height: 60,
                        color: Colors.white,),
                    ),
                  ),
                )//Images.network
            ), //FlexibleSpaceBar
            expandedHeight: 140,
              actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: IconBtnWithCounter(
                        svgSrc: "assets/icons/Cart Icon.svg",
                        press: () => Navigator.pushNamed(context, CartScreen.routeName),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: IconBtnWithCounter(
                        svgSrc: "assets/icons/Bell.svg",
                        numOfitem: 3,
                        press: () {},

                      ),
                    ),
                    const SizedBox(width: 20,)
                  ],
          ),
           SliverAppBar(
            backgroundColor: backgroundColor,
            expandedHeight: 226,
            automaticallyImplyLeading: false,
            flexibleSpace: const FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DiscountBanner(),
                    Categories(),
                  ]
                )//Images.network
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => childWidget[index], //ListTile
              childCount: childWidget.length,
            ), //SliverChildBuildDelegate
          )
        ],
      )
    );
  }
}
