import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/payment/view.dart';
import 'package:foodninja1/signIn/view.dart';

class SignUpProcessView extends StatelessWidget {
  SignUpProcessView({Key? key}) : super(key: key);

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

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
                    Text("Fill in your bio to get\nstarted",
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
                      height: 61.h,
                      width: 347.w,
                      child: TextFormField(
                        controller: controller1,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B).withOpacity(.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BentonSansRegular'),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: "Enter your first name",
                          hintStyle:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xffFFFFFF), width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 61.h,
                      width: 347.w,
                      child: TextFormField(
                        controller: controller2,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B).withOpacity(.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BentonSansRegular'),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: "Enter your last name",
                          hintStyle:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xffFFFFFF), width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 61.h,
                      width: 347.w,
                      child: TextFormField(
                        controller: controller1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B).withOpacity(.3),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BentonSansRegular'),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: "Enter your mobile number",
                          hintStyle:
                              TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xffFFFFFF), width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 220.h),
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
                            navigateTo(context, PaymentView());
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
            ),
          )
        ],
      ),
    );
  }
}
