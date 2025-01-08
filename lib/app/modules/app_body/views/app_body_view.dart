import 'package:card/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_body_controller.dart';

class AppBodyView extends GetView<AppBodyController> {
  const AppBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              /// Profile
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.png"),
                    ),
                  ),
                ),
              ),

              /// name text field
              const CustomTextFormField(
                hintText: "name",
                prefixIcon: Icon(Icons.person),
                enableBorderActive: true,
                focusBorderActive: true,
              ),
              const SizedBox(
                height: 20,
              ),

              /// email text field
              const CustomTextFormField(
                hintText: "email",
                prefixIcon: Icon(Icons.email),
                enableBorderActive: true,
                focusBorderActive: true,
              ),
              const SizedBox(
                height: 20,
              ),

              /// password text field
              const CustomTextFormField(
                hintText: "password",
                prefixIcon: Icon(Icons.lock),
                enableBorderActive: true,
                focusBorderActive: true,
              ),
              const SizedBox(
                height: 20,
              ),

              /// confirm password text field
              const CustomTextFormField(
                hintText: "confirm password",
                prefixIcon: Icon(Icons.lock_clock),
                enableBorderActive: true,
                focusBorderActive: true,
              ),
              const SizedBox(
                height: 50,
              ),

              /// sign up button
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF75F55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              ///  Row ( facebook or gmail)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/facebook.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/gmail.png"),
                      ),
                    ),
                  ),
                ],
              ),

              ///  all have account
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Color(0xFF383C40),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "log in",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
