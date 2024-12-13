import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {

    var size =MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        const Spacer(),
        Image.asset("assets/images/logo.png", height: 60, color: kPrimaryColor,),

        Text(
          widget.text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          widget.image!,
          height: size.height/5,
        ),
      ],
    );
  }
}
