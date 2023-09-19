import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../core/logic/helper_methods.dart';
import '../onBoarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateTo(context, OnBoardingView(),keepHistory: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Pattern.png",
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          FadeIn(
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  height: 139.h,
                  width: 175.w,
                ),
                SizedBox(height: 25.h),
                GradientText(
                  'Food Ninja',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Viga',
                    fontWeight: FontWeight.w400
                  ),
                  colors: [
                    Color(0xff53E88B),
                    Color(0xff15BE77)
                  ],
                ),
                SizedBox(height: 10.h),
                Text("Deliever Favorite Food",
                    style: TextStyle(
                      color: Color(0xff09051C),
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600
                    ))
              ],
            )),
            duration: Duration(seconds: 5),
          )
        ],
      ),
    );
  }
}

