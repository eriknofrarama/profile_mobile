import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:profile_mobile/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.7,
              height: Get.width * 0.7,
              child: Image.asset(
                "assets/logo/logo.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 75),
            Text(
              "Welcome to My Profile",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Anda akan Lebih Mengenal Saya setelah Melihat Profile Berikut ini...",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF8C8C8C),
              ),
            ),
            SizedBox(height: 75),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN),
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEC5F5F),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
