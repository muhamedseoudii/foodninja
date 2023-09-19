import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/homePageNav/chatPage/call/view.dart';

import '../../../core/logic/helper_methods.dart';
import '../finishOrder/view.dart';
import '../model.dart';

class ChatDetailsView extends StatelessWidget {
  const ChatDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Image.asset(
            "assets/images/food.png",
            height: double.infinity,
            fit: BoxFit.scaleDown,
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
                      "Chat",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: 347.w,
                      height: 93.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          Image.asset("assets/images/person1.png",
                              fit: BoxFit.scaleDown, width: 64.w, height: 64.h),
                          SizedBox(width: 21.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Dianne Russell",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Benton',
                                  wordSpacing: .5,
                                  color: Color(0xff09051C),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/onlineDot.svg",
                                    fit: BoxFit.scaleDown,
                                    width: 6.w,
                                    height: 6.h,
                                  ),
                                  SizedBox(width: 5.h),
                                  Text(
                                    "Online",
                                    style: TextStyle(
                                      fontSize: 14,
                                      wordSpacing: .5,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Benton',
                                      color: Color(0xff3B3B3B).withOpacity(.3),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 35.w),
                          IconButton(iconSize: 100,
                            onPressed: () {
                              navigateTo(context, CallView());
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/call.svg",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Container(
                      width: 129.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF6F6F6)),
                      child: Center(
                        child: Text(
                          "Just to order",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            wordSpacing: .5,
                            fontFamily: 'Benton',
                            color: Color(0xff181818).withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 265.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [Color(0xff53E88B), Color(0xff15BE77)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Okay, for what level of spiciness?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                wordSpacing: .5,
                                fontFamily: 'Benton',
                                color: Color(0xffFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 151.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF6F6F6)),
                      child: Center(
                        child: Text(
                          "Okay, wait a minute 👍",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            wordSpacing: .5,
                            fontFamily: 'Benton',
                            color: Color(0xff181818).withOpacity(.8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 175.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [Color(0xff53E88B), Color(0xff15BE77)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Okay I'm waiting  👍",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                wordSpacing: .5,
                                fontFamily: 'Benton',
                                color: Color(0xffFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 217.h),
                    Container(
                      width: 335.w,
                      height: 74.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                       color: Color(0xffFFFFFF)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 25.w),
                          Text(
                            "Okay I'm waiting  👍",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              wordSpacing: .5,
                              fontFamily: 'Rubik',
                              color: Color(0xff181818).withOpacity(.8),
                            ),
                          ),
                          SizedBox(width: 120.w),
                          IconButton(
                            onPressed: () {
                              navigateTo(context, FinishOrderView());
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/IconSend.svg",
                              fit: BoxFit.scaleDown,
                              width: 25.w,
                              height: 25.h,
                            ),
                          ),
                        ],
                      ),
                    ),
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
