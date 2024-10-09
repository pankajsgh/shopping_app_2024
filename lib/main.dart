import 'package:flutter/material.dart';
import 'package:shopping_app_2024/screens/splash/splash_screen.dart';

import 'config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
      initialRoute: SplashScreen.routeName,
      //initialRoute: InitScreen.routeName,
      routes: routes,
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.red,
        child: const Center(
          child: Text("Hi how are you", style: TextStyle(color: Colors.white, fontSize: 40),),
        )
      ),
    );
  }
}
