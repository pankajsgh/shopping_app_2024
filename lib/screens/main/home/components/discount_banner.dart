import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child:  Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12.0,left: 12),
            child: Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(text: "Last Discount\n"),
                  TextSpan(
                    text: "up to 60%",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset("assets/images/shoes2.png", height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image.asset("assets/images/tshirt.png", fit: BoxFit.cover,height: 120,),
          ),
        ],
      ),
    );
  }
}
