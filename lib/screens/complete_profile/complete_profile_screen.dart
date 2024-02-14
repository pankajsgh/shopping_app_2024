import 'package:flutter/material.dart';

import '../../config/constants.dart';
import 'components/complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(

                children: [
                  const SizedBox(height: 20),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text("My Account", style: headingStyle)),

                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CompleteProfileForm(),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "By continuing your confirm that you agree \nwith our Term and Condition",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
