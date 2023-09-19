import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';

import '../signUp/successNotifications/view.dart';

class SetLocationView extends StatelessWidget {
  SetLocationView({Key? key}) : super(key: key);

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
          SafeArea(
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
                  Text("Upload Your Photo\nProfile",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      )),
                  SizedBox(height: 20.h),
                  Text(
                      "This data will be displayed in your account\nprofile for security",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Benton',
                        color: Color(0xff000000),
                      )),
                  SizedBox(height: 20.h),
                  Center(
                    child: Container(
                      height: 147.h,
                      width: 342.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/icons/location.svg"),
                                SizedBox(width: 14.w),
                                Text(
                                  "Your Location",
                                  style: TextStyle(
                                    fontFamily: 'Benton',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff09051C),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.h),
                            Container(
                              height: 57.h,
                              width: 322.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(
                                          color: Color(0xffF6F6F6), width: 2)),
                                  backgroundColor: Color(0xffF6F6F6),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Set Location",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff09051C),
                                      fontFamily: 'Rubik',
                                      letterSpacing: 0.7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 328.h),
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
                          navigateTo(context, SuccessNotifcationsView());
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
          )
        ],
      ),
    );
  }
}
