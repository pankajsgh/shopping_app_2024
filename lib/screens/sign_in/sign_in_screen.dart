import 'package:flutter/material.dart';
import 'package:shopping_app_2024/config/constants.dart';
import '../../components/social_card.dart';
import '../init_screen.dart';
import 'components/sign_form.dart';
import 'components/sign_up_form.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isSignUp= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                SizedBox(height: 120,),
                // CustomPaint(
                //   foregroundPainter: CirclePainter(),
                //   child: Container(
                //     height: 220,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 28,),
                  ),
                ),
                 Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, InitScreen.routeName);

                        },
                        child: const Text("Skip" )),
                  ),
                ),
              ],
            ),

            Text(
              isSignUp? "SIGN UP":"SIGN IN",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              isSignUp? "Sign in with your email and password" :"Sign up in with your email and password",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(30),
              child: isSignUp? const SignUpForm():const SignForm(),
            ),
            const Text(
              "or continue with social media",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            isSignUp? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "have an account? ",
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSignUp = false;

                    });
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16, color: kPrimaryColor),
                  ),
                ),
              ],
            ):Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSignUp = true;

                    });
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = kPrimaryColor
      ..strokeWidth = 15;

    canvas.drawArc( Rect.fromLTWH(-620, -320, size.width+600, size.height+220),
        0,6, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
