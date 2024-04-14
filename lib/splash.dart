import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/sign_up.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAll(SignUp());
      },
    );

    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/shop.json"),
      ),
    );
  }
}
