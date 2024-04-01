import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_signup/constant.dart';
import 'package:signin_signup/screens/login_screen.dart';
import 'package:signin_signup/widgets/custom_button.dart';
import 'package:signin_signup/widgets/custom_textfield.dart';
import 'package:signin_signup/widgets/scrollable_column.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                'Create Account',
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
                'Create an account so you can explore \nall the existing jobs',
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextFields(
                hintText: 'Confirm Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 28,
              ),
              child: CustomElevatedBtn(
                title: 'Sign Up',
                onPressed: () {},
              ),
            ),
            CustomTextBtn(
              width: double.minPositive,
              onPressed: () {
                Get.to(() => const LoginScreen());
              },
              title: 'Already have an account',
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
