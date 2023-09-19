import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../core/logic/helper_methods.dart';
import 'pinCode/view.dart';

class ForgetPasswordView extends StatefulWidget {
  ForgetPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        clipBehavior: Clip.antiAlias,
        children: [
          Image.asset(
              "assets/images/Pattern2.png",
              width: double.infinity,
              fit: BoxFit.contain,
            ),

          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            "assets/icons/IconBack2.svg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text("Forgot password?",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'BenBold',
                          color: Color(0xff09051C),
                        )),
                    SizedBox(height: 20.h),
                    Text(
                        "Select which contact details should we\nuse to reset your password",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Benton',
                          color: Color(0xff000000),
                        )),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, PinCodeView());
                      },
                      child: Container(
                        height: 105.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/icons/visa_message.svg"),
                                SizedBox(width: 16.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      "Via sms:",
                                      style: TextStyle(
                                          color: Color(0xff828282),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Benton'),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Frame.png",
                                            width: 44.w,
                                            height: 8,
                                            fit: BoxFit.scaleDown),
                                        SizedBox(width: 14.w),
                                        Image.asset("assets/images/Frame.png",
                                            width: 44.w,
                                            height: 8,
                                            fit: BoxFit.scaleDown),
                                        SizedBox(width: 14.w),
                                        Text(
                                          "4235",
                                          style: TextStyle(
                                              color: Color(0xff09051C),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: 'Benton'),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        navigateTo(context, PinCodeView());
                      },
                      child: Container(
                        height: 81.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/icons/Email2.svg"),
                                SizedBox(width: 16.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      "Via email:",
                                      style: TextStyle(
                                          color: Color(0xff828282),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Benton'),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/Frame.png",
                                            width: 44.w,
                                            height: 8,
                                            fit: BoxFit.scaleDown),
                                        SizedBox(width: 14.w),
                                        Text(
                                          "@gmail.com",
                                          style: TextStyle(
                                              color: Color(0xff09051C),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontFamily: 'Benton'),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 269.h),
                    Center(
                      child: Container(
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
                            navigateTo(context, PinCodeView());
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'BenBold',
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
