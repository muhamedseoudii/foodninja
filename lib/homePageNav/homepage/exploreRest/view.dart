import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/homePageNav/homepage/filter/view.dart';

class ExploreRestView extends StatelessWidget {
  const ExploreRestView({Key? key}) : super(key: key);

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
                            onPressed: () {},
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
                    Row(
                      children: [
                        Text(
                          "Popular Restaurant",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 710,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
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
                                ],
                              ),
                              SizedBox(height: 20.h),
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
                                          "assets/images/smartResto.png",
                                          fit: BoxFit.cover,
                                          width: 90.w,
                                          height: 98.h,
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Smart Resto",
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
                                ],
                              ),
                              SizedBox(height: 20.h),
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
                                          "assets/images/rest5.png",
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
                                          "assets/images/rest6.png",
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
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    )
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
