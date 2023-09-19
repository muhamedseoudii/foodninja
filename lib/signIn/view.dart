import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/signUp/view.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../signUp/signupprocess/view.dart';

class SignInView extends StatefulWidget {
  SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool obscureT = false;
  bool isChecked = false;
  bool isChecked2 = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

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
            child: Center(
              heightFactor: 1.1.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    height: 139.h,
                    width: 175.w,
                  ),
                  SizedBox(height: 1.h),
                  GradientText(
                    'Food Ninja',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Viga',
                        fontWeight: FontWeight.w400),
                    colors: [Color(0xff53E88B), Color(0xff15BE77)],
                  ),
                  Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                        color: Color(0xff09051C),
                        fontSize: 13,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 60.h),
                  Text(
                    "Sign Up For Free ",
                    style: TextStyle(
                      color: Color(0xff09051C),
                      fontFamily: 'BenBold',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    height: 57.h,
                    width: 325.w,
                    child: TextFormField(
                      controller: controller1,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Anamwp . . |",
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/Profile.svg",
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
                        hintText: "Enter your name",
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xffF4F4F4), width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 57.h,
                    width: 325.w,
                    child: TextFormField(
                      controller: controller2,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/Message.svg",
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
                        hintText: "Enter your Email address",
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xffF4F4F4), width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 57.h,
                    width: 325.w,
                    child: TextFormField(
                      controller: controller3,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color(0xff3B3B3B).withOpacity(.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BentonSansRegular'),
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/Lock.svg",
                          fit: BoxFit.scaleDown,
                          width: 24.w,
                          height: 24.h,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(obscureT
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              obscureT = !obscureT;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        hintText: "Enter the Password",
                        hintStyle:
                            TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide:
                              BorderSide(color: Color(0xffF4F4F4), width: 2),
                        ),
                      ),
                      obscureText: !obscureT,
                    ),
                  ),
                  SizedBox(height: 19.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircularCheckbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? true;
                              });
                            },
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "Keep Me Signed In",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: "Benton",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircularCheckbox(
                            value: isChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked2 = value ?? true;
                              });
                            },
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "Email Me About Special Pricing",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: "Benton",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  SizedBox(height: 43.h),
                  Container(
                    width: 175,
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
                        navigateTo(context, SignUpProcessView());
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'BenBold',
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, SignUpView());
                    },
                    child: ShaderMask(
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [Color(0xff53E88B), Color(0xff15BE77)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },
                      child: Text(
                        "already have an account?",
                        style: TextStyle(
                          fontFamily: "Benton",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors
                              .white, // Set text color to white or any desired color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CircularCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CircularCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged?.call(!value);
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: value ? Colors.green : Colors.transparent,
        ),
        child: value
            ? Icon(
          Icons.check,
          size: 14,
          color: Colors.white,
        )
            : null,
      ),
    );
  }
}