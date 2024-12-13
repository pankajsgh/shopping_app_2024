import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
   DiscountBanner({
    Key? key,
  }) : super(key: key);

  List<String> imgList = ["assets/images/shoes2.png", "assets/images/tshirt.png", "assets/images/shoes2.png", "assets/images/tshirt.png"];
   List<String> discountText = ["up to 60%", "up to 40%", "up to 60%", "up to 40%"];


   @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: PageView.builder(

        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF4A3298),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(text: "Last Discount\n"),
                        TextSpan(
                          text: discountText[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(imgList[index], fit: BoxFit.contain,),
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
