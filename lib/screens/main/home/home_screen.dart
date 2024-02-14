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
    SpecialOffers(),
    const RecommendedProducts(),
    const PopularProducts(),
    const RecommendedProducts(),
    const PopularProducts(),
  ];

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = kPrimaryColorThird;

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
              backgroundColor: backgroundColor,
              toolbarHeight: 70,
              automaticallyImplyLeading: false,
              title: const SearchField(),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Image.asset("assets/images/logo.png", height: 60,color: Colors.blue,),
                  ),
                )//Images.network
            ), //FlexibleSpaceBar
            expandedHeight: 130,
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
            expandedHeight: 220,
            automaticallyImplyLeading: false,
            flexibleSpace: const FlexibleSpaceBar(
                background: Column(
                  children: [
                    SizedBox(height: 10,),
                    DiscountBanner(),
                    Categories(),
                  ],
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
