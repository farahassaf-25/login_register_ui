import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/constant.dart';
import 'package:signin_signup/screens/signup_screen.dart';
import 'package:signin_signup/widgets/custom_button.dart';
import 'package:signin_signup/widgets/scrollable_column.dart';
import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text(
                'Login Here',
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Constant.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 48),
              child: Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  fontSize: 20,
                  color: Constant.mcgpalette0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextFields(
                hintText: 'Email',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextFields(
                hintText: 'Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InkWell(
                onTap: () {},
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot your password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Constant.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 28,
              ),
              child: CustomElevatedBtn(
                title: 'Sign In',
                onPressed: () {},
              ),
            ),
            CustomTextBtn(
              width: double.minPositive,
              onPressed: () {
                Get.to(() => const SignUpScreen());
              },
              title: 'Create New Account',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Or Continue With',
                style: TextStyle(
                  color: Constant.mcgpalette0Accent,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.5,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialBtn(
                  image: 'assets/images/google.svg',
                  onTap: () {},
                ),
                const SizedBox(width: 5),
                SocialBtn(
                  image: "assets/images/facebook.svg",
                  onTap: () {},
                ),
                const SizedBox(width: 5),
                SocialBtn(
                  image: "assets/images/apple.svg",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
