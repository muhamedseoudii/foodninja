import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/homePageNav/homepage/exploreMenu/view.dart';
import 'package:foodninja1/homePageNav/homepage/exploreRest/view.dart';
import 'package:foodninja1/homePageNav/homepage/filter/view.dart';
import 'package:foodninja1/homePageNav/homepage/notification/view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/logic/helper_methods.dart';
import '../view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find Your\nFavorite Food",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                        SizedBox(width: 30.w),
                        Container(
                          width: 45.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffFAFDFF)),
                          child: IconButton(
                            onPressed: () {
                              navigateTo(context, NotificationView());
                            },
                            icon: Icon(CupertinoIcons.bell),
                            color: Color(0xff53E88B),
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 267.w,
                          height: 50.h,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "What do you want to order?",
                              labelStyle: TextStyle(
                                  color: Color(0xffDA6317).withOpacity(0.4),
                                  wordSpacing: 0.5,
                                  fontSize: 14),
                              filled: true,
                              fillColor: Color(0xffF9A84D).withOpacity(0.1),
                              prefixIcon: SvgPicture.asset(
                                  "assets/icons/search.svg",
                                  fit: BoxFit.scaleDown),
                              hintText: "Search Order here",
                              hintStyle: TextStyle(
                                  color: Color(0xffDA6317).withOpacity(0.4),
                                  fontSize: 14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide.none,
                                gapPadding: 5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          width: 60,
                          height: 66,
                          child: IconButton(
                            onPressed: () {
                              navigateTo(context, FilterView());
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/filter.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Container(
                          height: 150.h,
                          width: 305.w,
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
                              Image.asset("assets/images/icecream.png"),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/homePattern.svg",
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 178, right: 10, bottom: 76, top: 40),
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
                              left: 178, right: 70, bottom: 30, top: 90),
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
                              child: GradientText(
                                colors: [Color(0xff53E88B), Color(0xff15BE77)],
                                "Buy Now",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'BenBold',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearest Restaurant",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, ExploreRestView());
                          },
                          child: Text(
                            "View More",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Benton',
                              color: Color(0xffFF7C32),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 184.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 147.w,
                                height: 184.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 20.h),
                                    Image.asset(
                                      "assets/images/ResturantImage.png",
                                      fit: BoxFit.cover,
                                      width: 96.w,
                                      height: 73.h,
                                    ),
                                    SizedBox(height: 20.h),
                                    Text(
                                      "Vegan Resto",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'BenBold',
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "12 Mins",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Benton',
                                        color:
                                            Color(0xff000000).withOpacity(.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Container(
                                width: 147.w,
                                height: 184.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 6.h),
                                    Image.asset(
                                      "assets/images/healthyfood.png",
                                      fit: BoxFit.cover,
                                      width: 90.w,
                                      height: 98.h,
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "Healthy Food",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'BenBold',
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "8 Mins",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Benton',
                                        color:
                                            Color(0xff000000).withOpacity(.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Container(
                                width: 147.w,
                                height: 184.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 6.h),
                                    Image.asset(
                                      "assets/images/goodfood.png",
                                      fit: BoxFit.cover,
                                      width: 86.w,
                                      height: 88.h,
                                    ),
                                    SizedBox(height: 20.h),
                                    Text(
                                      "Good Food",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'BenBold',
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "12 Mins",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Benton',
                                        color:
                                            Color(0xff000000).withOpacity(.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Menu",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, ExploreMenuView());
                          },
                          child: Text(
                            "View More",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Benton',
                              color: Color(0xffFF7C32),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 200.h,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 323.w,
                                height: 87.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF)),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10.w),
                                    Image.asset("assets/images/greenNoddle.png",
                                        fit: BoxFit.scaleDown,
                                        width: 64.w,
                                        height: 64.h),
                                    SizedBox(width: 21.w),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Green Noddle",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Benton',
                                            wordSpacing: .5,
                                            color: Color(0xff09051C),
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "Noddle Home",
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
                                    SizedBox(width: 80.w),
                                    Text(
                                      "\$15",
                                      style: TextStyle(
                                        fontSize: 22,
                                        wordSpacing: .5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'BenBold',
                                        color: Color(0xffFEAD1D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                width: 323.w,
                                height: 87.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF)),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10.w),
                                    Image.asset("assets/images/herbalPancake.png",
                                        fit: BoxFit.scaleDown,
                                        width: 64.w,
                                        height: 64.h),
                                    SizedBox(width: 21.w),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Herbal Pancake",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Benton',
                                            wordSpacing: .5,
                                            color: Color(0xff09051C),
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "Warung Herbal",
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
                                    SizedBox(width: 80.w),
                                    Text(
                                      "\$7",
                                      style: TextStyle(
                                        fontSize: 22,
                                        wordSpacing: .5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'BenBold',
                                        color: Color(0xffFEAD1D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
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
