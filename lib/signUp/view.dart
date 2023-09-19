import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/forgetPasword/view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../signIn/view.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool obscureT = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "can not launch url ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/food.png",
              height: double.infinity,
              fit: BoxFit.scaleDown,
            ),
          ),
          SingleChildScrollView(
            child: Center(
              heightFactor: 1.1.h,
              child: Column(
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
                    "Login To Your Account",
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Color(0xff3B3B3B).withOpacity(.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BentonSansRegular'),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        hintText: "Enter your email address",
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
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color(0xff3B3B3B).withOpacity(.3),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BentonSansRegular'),
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
                  SizedBox(height: 20.h),
                  Text(
                    "Or Continue With",
                    style: TextStyle(
                      color: Color(0xff09051C),
                      fontFamily: 'BenBold',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 152.h,
                        height: 57.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                      color: Color(0xffF4F4F4), width: 2)),
                              backgroundColor: Color(0xffFFFFFF),
                              fixedSize: Size.fromHeight(55)),
                          onPressed: () {
                            _launchURL("www.facebook.com");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/facebook.png",
                                  height: 25.h),
                              SizedBox(width: 20.w),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff09051C),
                                    fontFamily: 'Benton'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 21.w),
                      Container(
                        width: 152.h,
                        height: 57.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                      color: Color(0xffF4F4F4), width: 2)),
                              backgroundColor: Color(0xffFFFFFF),
                              fixedSize: Size.fromHeight(55)),
                          onPressed: () {
                            _launchURL("www.google.com");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/google.png",
                                  height: 25.h),
                              SizedBox(width: 20.w),
                              Text(
                                "Google",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff09051C),
                                    fontFamily: 'Benton'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, ForgetPasswordView());
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
                        "Forgot Your Password?",
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
                  SizedBox(height: 36.h),
                  Container(
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
                        navigateTo(context, SignInView());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'BenBold',
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
