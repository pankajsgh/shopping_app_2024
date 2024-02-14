import 'package:flutter/material.dart';
import 'package:shopping_app_2024/config/constants.dart';
import 'package:shopping_app_2024/screens/init_screen.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
     Future.delayed(const Duration(milliseconds: 300),(){
       Navigator.pushReplacementNamed(context, InitScreen.routeName);
     });

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Image.asset(
            "assets/images/success.png",
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,//40%
          ),
          const SizedBox(height: 16),
          const Text(
            "Login Success",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),

        ],
      ),
    );
  }
}
