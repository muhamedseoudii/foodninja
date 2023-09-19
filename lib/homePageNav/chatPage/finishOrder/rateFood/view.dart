import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/homePageNav/chatPage/finishOrder/rateRest/view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../core/logic/helper_methods.dart';

class RateFoodView extends StatefulWidget {
  const RateFoodView({Key? key}) : super(key: key);

  @override
  State<RateFoodView> createState() => _RateFoodViewState();
}

class _RateFoodViewState extends State<RateFoodView> {
  bool isRate = false;

  bool isRate2 = false;

  TextEditingController controller1 = TextEditingController();

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
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Image.asset(
                        "assets/images/food3.png",
                        fit: BoxFit.scaleDown,
                        width: 197.w,
                        height: 191.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      textAlign: TextAlign.center,
                      "Thank You!\nEnjoy Your Meal",
                      style: TextStyle(
                        fontSize: 25,
                        wordSpacing: .5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Please rate your Food",
                      style: TextStyle(
                        fontSize: 15,
                        wordSpacing: .5,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Benton',
                        color: Color(0xff3B3B3B).withOpacity(.3),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 50,
                          icon: SvgPicture.asset("assets/icons/StarON.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 50,
                          icon: SvgPicture.asset("assets/icons/StarON.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 50,
                          icon: SvgPicture.asset("assets/icons/StarON1.svg"),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            isRate2 = !isRate2;
                            setState(() {});
                          },
                          icon: isRate2
                              ? SvgPicture.asset(
                            "assets/icons/StarON.svg",
                          )
                              : SvgPicture.asset(
                            "assets/icons/StarOff.svg",
                          ),
                        ),
                        IconButton(
                          iconSize: 50,
                          onPressed: () {
                            isRate = !isRate;
                            setState(() {});
                          },
                          icon: isRate
                              ? SvgPicture.asset(
                            "assets/icons/StarON.svg",
                          )
                              : SvgPicture.asset(
                            "assets/icons/StarOff.svg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.w),
                    Container(
                      height: 55.h,
                      width: 335.w,
                      child: TextFormField(
                        controller: controller1,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Leave feedback",
                          prefixIcon: SvgPicture.asset(
                            "assets/icons/editIcon.svg",
                            fit: BoxFit.scaleDown,
                            width: 24.w,
                            height: 24.h,
                          ),
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B).withOpacity(.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BentonSansRegular'),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: "Enter your feedback",
                          hintStyle:
                          TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Color(0xffE8E8E8), width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 233,
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
                              navigateTo(context, RateRestView());
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BenBold',
                                  color: Color(0xffFEFEFF)),
                            ),
                          ),
                        ),
                        Container(
                          width: 100.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
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
                              navigateTo(context, RateRestView());
                            },
                            child: GradientText(
                              colors: [Color(0xff53E88B), Color(0xff15BE77)],
                              "Skip",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'BenBold',
                              ),
                            ),
                          ),
                        ),
                      ],
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
