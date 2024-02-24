import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../cart/cart_screen.dart';
import '../../complete_profile/complete_profile_screen.dart';
import '../home/components/icon_btn_with_counter.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";
  ProfileScreen({super.key});
  static const platform = MethodChannel('samples.flutter.dev/battery');

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _batteryLevel = 'Unknown battery level.';

  @override
  void initState() {
    super.initState();
    // Fetch user data from API using BuildContext
    //_getBatteryLevel();
  }

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final result = await ProfileScreen.platform.invokeMethod<int>('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

      _batteryLevel = batteryLevel;
    print("hi how awer ou");
    print(_batteryLevel);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Profile"),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20, bottom: 20),
              child: Row(children: [
                Text("Profile", textAlign: TextAlign.left, style: TextStyle(fontSize: 32), ),
                Spacer(),
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Cart Icon.svg",
                  press: () => Navigator.pushNamed(context, CartScreen.routeName),
                ),
                const SizedBox(width: 8),


              ],),
            ),
            const ProfilePic(),

            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName)
              },
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
