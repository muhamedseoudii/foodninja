import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/uploadPhoto/view.dart';

import '../core/logic/helper_methods.dart';

class PaymentView extends StatelessWidget {
  PaymentView({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(25),
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
                  Text("Payment Method",
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
                  Container(
                    width: 335.h,
                    height: 73.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: Color(0xffFFFFFF), width: 2)),
                          backgroundColor: Color(0xffFFFFFF),
                          shadowColor: Color(0xffF4F4F4),
                          fixedSize: Size.fromHeight(55)),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "You have selected PayPal",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BenBold',
                                color: Colors.white,
                                letterSpacing: 1
                              ),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/paypal.png", height: 25.h),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Container(
                    width: 335.h,
                    height: 73.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: Color(0xffFFFFFF), width: 2)),
                          backgroundColor: Color(0xffFFFFFF),
                          shadowColor: Color(0xffF4F4F4),
                          fixedSize: Size.fromHeight(55)),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "You have selected Visa",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BenBold',
                                color: Colors.white,
                                  letterSpacing: 1
                              ),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/visa.png", width: 60.w),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Container(
                    width: 335.h,
                    height: 73.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                  color: Color(0xffFFFFFF), width: 2)),
                          backgroundColor: Color(0xffFFFFFF),
                          shadowColor: Color(0xffF4F4F4),
                          fixedSize: Size.fromHeight(55)),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "You have selected Payoneer",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BenBold',
                                color: Colors.white,
                                  letterSpacing: 1
                              ),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Payoneer.png",
                              height: 32.h),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 219.h),
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
                          navigateTo(context, UploadPhotoView());
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
