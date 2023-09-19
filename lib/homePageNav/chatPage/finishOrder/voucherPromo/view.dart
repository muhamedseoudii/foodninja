import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/homePageNav/chatPage/chatDetails/view.dart';
import 'package:foodninja1/homePageNav/homepage/view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../core/logic/helper_methods.dart';

class VoucherPromoView extends StatefulWidget {
  const VoucherPromoView({Key? key}) : super(key: key);

  @override
  State<VoucherPromoView> createState() => _VoucherPromoViewState();
}

class _VoucherPromoViewState extends State<VoucherPromoView> {
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
                    Text(
                      "Voucher Promo",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Container(
                          height: 130.h,
                          width: 330.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            gradient: LinearGradient(
                              colors: [Color(0xff53E88B), Color(0xff15BE77)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/person6.png",
                                  fit: BoxFit.scaleDown),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 36, top: 80),
                          child: SvgPicture.asset(
                            "assets/images/voucher.svg",
                            fit: BoxFit.scaleDown,
                            width: 126.w,
                            height: 63,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 70),
                          child: SvgPicture.asset(
                            "assets/images/dot.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 40),
                          child: SvgPicture.asset(
                            "assets/images/dot.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 135, top: 8),
                          child: SvgPicture.asset(
                            "assets/images/dot2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 90),
                          child: SvgPicture.asset(
                            "assets/images/dot2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 200, right: 10, bottom: 76, top: 30),
                          child: Text(
                            "Special Deal For\nOctober",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BenBold',
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 200, right: 70, bottom: 30, top: 90),
                          child: Container(
                            width: 82.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFFFFFF)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                // navigateTo(context, HomePageNavView());
                              },
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Color(0xff009C51),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'BenBold',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Stack(
                      children: [
                        Container(
                          height: 130.h,
                          width: 325.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xffE9F7BA)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/voucher1.png",
                                  fit: BoxFit.scaleDown),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 40),
                          child: SvgPicture.asset(
                            "assets/images/voucher2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 200, right: 10, bottom: 76, top: 30),
                          child: Text(
                            "Special Deal For\nOctober",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BenBold',
                              color: Color(0xff6B3A5B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 200, right: 70, bottom: 30, top: 90),
                          child: Container(
                            width: 82.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffFFFFFF)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                // navigateTo(context, HomePageNavView());
                              },
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Color(0xff6B3A5B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'BenBold',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 290.h),
                    Center(
                      child: Container(
                        width: 350,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
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
                            navigateTo(context, HomePageView());
                          },
                          child: Text(
                            "Check out",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'BenBold',
                                color: Color(0xffFEFEFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
