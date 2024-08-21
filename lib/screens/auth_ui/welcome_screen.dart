// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(
          'Welcome to my app',
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset('assets/images/sprayPaint.json'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Happy Shopping',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              // ignore: sized_box_for_whitespace
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Image.asset('assets/images/google-signIn.png'),
                  label: Text(
                    "Sign with Google",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 38,
            ),
            Material(
              // ignore: sized_box_for_whitespace
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Icon(Icons.apple,
                      size: 45, color: AppConstant.appTextColor),
                  label: Text(
                    "Sign with Apple",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
