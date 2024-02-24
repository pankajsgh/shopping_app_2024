import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../cart/cart_screen.dart';
import '../../complete_profile/complete_profile_screen.dart';
import '../home/components/icon_btn_with_counter.dart';


class Chat extends StatefulWidget {
  static String routeName = "/profile";
  Chat({super.key});
  static const platform = MethodChannel('samples.flutter.dev/battery');

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String _batteryLevel = 'Unknown battery level.';

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("Profile"),
      // ),
      body: Center(child: Text("Comming Soon"))
    );
  }
}
