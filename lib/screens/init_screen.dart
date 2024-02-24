import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../config/constants.dart';
import 'main/chat/profile_screen.dart';
import 'main/favorite/favorite_screen.dart';
import 'main/home/home_screen.dart';
import 'main/profile/profile_screen.dart';

const Color inActiveIconColor = Color(0xFF878787);

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  static String routeName = "/";

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    HomeScreen(),
    const FavoriteScreen(),
    Chat(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: NavigationBar(
        height: 52,
        onDestinationSelected: updateCurrentIndex,
        selectedIndex: currentSelectedIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: kPrimaryColor,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              colorFilter:  ColorFilter.mode(
                currentSelectedIndex==0? Colors.white: inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              colorFilter:  ColorFilter.mode(
                currentSelectedIndex==1? Colors.white:inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),

            label: "Fav",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              colorFilter:  ColorFilter.mode(
                currentSelectedIndex==2? Colors.white: inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),

            label: "Chat",
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              colorFilter:  ColorFilter.mode(
                currentSelectedIndex==3? Colors.white:inActiveIconColor,
                BlendMode.srcIn,
              ),
            ),

            label: "Fav",
          ),
        ],
      ),
    );
  }
}
