import 'package:flutter/material.dart';
import 'package:signin_signup/screens/login_screen.dart';
import 'package:signin_signup/screens/signup_screen.dart';
import 'package:signin_signup/widgets/custom_button.dart';
import 'package:signin_signup/widgets/scrollable_column.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:signin_signup/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/half_oval.png'),
            alignment: Alignment.topRight,
            scale: 0.5,
          ),
        ),
        child: ScrollableColumn(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/images/welcome.svg',
                width: Get.width * 0.63),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Discover your dream job here',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Constant.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'Explore all the existing job alerts based on your \ninterest and study major',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomElevatedBtn(
                          title: 'Login',
                          onPressed: () {
                            Get.to(() => const LoginScreen());
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CustomElevatedBtn(
                          title: 'Register',
                          onPressed: () {
                            Get.to(() => const SignUpScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
