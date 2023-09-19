import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/homePageNav/homepage/exploreMenu/menuFilter/view.dart';
import 'package:foodninja1/homePageNav/homepage/exploreRest/restFilter/view.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

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
                    SizedBox(height: 25.h),
                    Container(
                      width: 325.w,
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
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 108.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {
                              navigateTo(context, RestaurantFilterView());
                            },
                            child: Text(
                              "Restaurant",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.h),
                        Container(
                          width: 74.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {
                              navigateTo(context, MenuFilterView());
                            },
                            child: Text(
                              "Menu",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 70.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "1 Km",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                          width: 86.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              ">10 Km",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                          width: 86.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "<10 Km",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(
                          "Food",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BenBold',
                            color: Color(0xff09051C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 70.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cake",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                          width: 71.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {
                              navigateTo(context, MenuFilterView());
                            },
                            child: Text(
                              "Soup",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                          width: 120.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Main Course",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Container(
                          width: 99.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Appetizer",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        Container(
                          width: 87.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF9A84D).withOpacity(0.1)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Dessert",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Benton',
                                color: Color(0xffDA6317),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 180.h),
                    Center(
                      child: Container(
                        width: 325,
                        height: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            // navigateTo(context, UploadPhotoView());
                          },
                          child: Text(
                            "Search",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'BenBold',
                                color: Color(0xffFEFEFF)),
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
