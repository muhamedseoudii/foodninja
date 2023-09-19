import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/homePageNav/homepage/view.dart';
import '../../../../core/logic/helper_methods.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
                      "Notification",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 347.w,
                      height: 105.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          SvgPicture.asset("assets/icons/SuccessIcon.svg",
                              fit: BoxFit.scaleDown,
                              width: 57.w,
                              height: 58.h),
                          SizedBox(width: 24.w),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your order has been taken by\nthe driver",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Benton ',
                                  wordSpacing: .9,
                                  color: Color(0xff09051C),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "Recently",
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
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 347.w,
                      height: 81.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          SvgPicture.asset("assets/icons/moneyIcon.svg",
                              fit: BoxFit.scaleDown,
                              width: 57.w,
                              height: 58.h),
                          SizedBox(width: 24.w),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Topup for \$100 was successful",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Benton ',
                                  wordSpacing: .9,
                                  color: Color(0xff09051C),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "10.00 Am",
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
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 347.w,
                      height: 81.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF)),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          SvgPicture.asset("assets/icons/CancelIcon.svg",
                              fit: BoxFit.scaleDown,
                              width: 57.w,
                              height: 58.h),
                          SizedBox(width: 24.w),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your order has been canceled",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Benton ',
                                  wordSpacing: .9,
                                  color: Color(0xff09051C),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "22 Juny 2021",
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
