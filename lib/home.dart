import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/sign_up.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () async {
              // logout function
              await FirebaseAuth.instance.signOut().then((value) {
                Get.snackbar("Logout", "User logout successful");
                Get.offAll(SignUp());
              }).onError((error, stackTrace) {
                Get.snackbar("Logout", "Logout error!");
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is my home page!",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
