import 'dart:async';

import 'package:basic_ui_withflutter/core/appcolors.dart';
import 'package:basic_ui_withflutter/core/appimages.dart';
import 'package:basic_ui_withflutter/src/Modules/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () =>
      Get.off(LoginScreeen())
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: Get.width,
        height: Get.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                  duration: Duration(seconds: 2),
                  tween:
                      Tween<double>(begin: Get.width/4, end: Get.width/2.5),
                  builder: (context, value, child) => Container(
                        width: value,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(Get.width / 2)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 12,
                              offset: Offset(0.0, 0.0), // Shadow position
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                        Radius.circular(Get.width / 2)),
                          child: Image.asset( 
                            AppImages.logo,
                          ),
                        ),
                      )),
              SizedBox(
                height: 50,
              ),
              Container(
                width: Get.width / 1.5,
                child: Text(
                  "Welcome to Somatec Pharmaceuticals Ltd",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.appcolor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  maxLines: 3,
                ),
              ),
            ]),
      ),
    );
  }
}
