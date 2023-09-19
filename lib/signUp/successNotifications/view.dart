import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../homePageNav/view.dart';

class SuccessNotifcationsView extends StatefulWidget {
  const SuccessNotifcationsView({Key? key}) : super(key: key);

  @override
  State<SuccessNotifcationsView> createState() => _SuccessNotifcationsViewState();
}

class _SuccessNotifcationsViewState extends State<SuccessNotifcationsView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {

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
              heightFactor: 2.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/congrats.png",
                      height: 162.h,
                      width: 172.w,
                    ),
                    SizedBox(height: 30.h),
                    GradientText(
                      'Congrats!',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'BenBold',
                          fontWeight: FontWeight.w400
                      ),
                      colors: [
                        Color(0xff53E88B),
                        Color(0xff15BE77)
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Text("Your Profile Is Ready To Use",
                        style: TextStyle(
                            color: Color(0xff09051C),
                            fontSize: 23,
                            fontFamily: 'BenBold',
                            fontWeight: FontWeight.w400
                        )),

                  ],
                )),
            duration: Duration(seconds: 1),
          ),
          SizedBox(height: 250.h),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 157,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Color(0xff53E88B), Color(0xff15BE77)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        navigateTo(context, HomePageNavView());
                      },
                      child: Text(
                        "Try Order",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'BenBold',
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

