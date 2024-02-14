import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_app_2024/config/constants.dart';
import 'package:shopping_app_2024/config/routes.dart';
import 'package:shopping_app_2024/screens/init_screen.dart';
import 'package:shopping_app_2024/screens/splash/splash_screen.dart';
import 'Pages/ShopPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      //initialRoute: InitScreen.routeName,
      routes: routes,
    );
  }
}


