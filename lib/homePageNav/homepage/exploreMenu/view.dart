import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/logic/helper_methods.dart';
import '../filter/view.dart';

class ExploreMenuView extends StatelessWidget {
  const ExploreMenuView({Key? key}) : super(key: key);

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
                          "Popular Menu",
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
                      height: 500.h,
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
                                    Image.asset(
                                        "assets/images/herbalPancake.png",
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
                                            color: Color(0xff3B3B3B)
                                                .withOpacity(.3),
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
                                    Image.asset("assets/images/fruitSalad.png",
                                        fit: BoxFit.scaleDown,
                                        width: 64.w,
                                        height: 64.h),
                                    SizedBox(width: 21.w),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Fruit Salad",
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
                                          "Wijie Resto",
                                          style: TextStyle(
                                            fontSize: 14,
                                            wordSpacing: .5,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Benton',
                                            color: Color(0xff3B3B3B)
                                                .withOpacity(.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 110.w),
                                    Text(
                                      "\$5",
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
                                            color: Color(0xff3B3B3B)
                                                .withOpacity(.3),
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
                            ],
                          ),
                        ],
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
