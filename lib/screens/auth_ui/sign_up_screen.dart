import 'package:ecommerce/screens/auth_ui/sign_in_screen.dart';
import 'package:ecommerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppConstant.appSecondaryColor,
          title: const Text(
            'Sign Up',
            style: TextStyle(color: AppConstant.appTextColor),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: const Text(
                  'Welcome to Tenga scents',
                  style: TextStyle(
                      color: AppConstant.appSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              SizedBox(height: Get.height / 12),
              _buildTextField(
                hintText: 'Email',
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              _buildTextField(
                hintText: 'Username',
                icon: Icons.person,
                keyboardType: TextInputType.name,
              ),
              _buildTextField(
                hintText: 'Phone',
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              _buildTextField(
                hintText: 'Password',
                icon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: Get.height / 38),
              _buildSignUpButton(),
              SizedBox(height: Get.height / 38),
              _buildSignInOption(),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildTextField(
      {required String hintText,
      required IconData icon,
      required TextInputType keyboardType}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          cursorColor: AppConstant.appSecondaryColor,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
            hintText: hintText,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Material(
      child: Container(
        width: Get.width / 2,
        height: Get.height / 18,
        decoration: BoxDecoration(
          color: AppConstant.appSecondaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextButton(
          child: const Text(
            "Sign Up",
            style: TextStyle(color: AppConstant.appTextColor),
          ),
          onPressed: () {
            // Add your sign-up logic here
          },
        ),
      ),
    );
  }

  Widget _buildSignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(color: AppConstant.appSecondaryColor),
        ),
        TextButton(
          onPressed: () => Get.offAll(() => const SignInScreen()),
          child: const Text(
            'Sign In',
            style: TextStyle(
                color: AppConstant.appSecondaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
