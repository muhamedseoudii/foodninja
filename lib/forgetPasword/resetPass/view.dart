import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/forgetPasword/successNotifications/view.dart';
import '../../core/logic/helper_methods.dart';
import '../pinCode/view.dart';

class ResetPassView extends StatefulWidget {
  ResetPassView({Key? key}) : super(key: key);

  @override
  State<ResetPassView> createState() => _ResetPassViewState();
}

class _ResetPassViewState extends State<ResetPassView> {
  bool obscureT = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
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
                    Text("Reset your password\nhere",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'BenBold',
                          color: Color(0xff09051C),
                        )),
                    SizedBox(height: 20.h),
                    Text(
                        "Select which contact details should we\nuse to reset your password",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Benton',
                          color: Color(0xff000000),
                        )),
                    SizedBox(height: 40.h),
                    Container(
                      height: 57.h,
                      width: 325.w,
                      child: TextFormField(
                        controller: controller1,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "New Password",
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Benton'),
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
                            BorderSide(color: Color(0xffFFFFFF), width: 2),
                          ),
                        ),
                        obscureText: !obscureT,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 57.h,
                      width: 325.w,
                      child: TextFormField(
                        controller: controller2,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                              color: Color(0xff3B3B3B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Benton'),
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
                            BorderSide(color: Color(0xffFFFFFF), width: 2),
                          ),
                        ),
                        obscureText: !obscureT,
                      ),
                    ),
                    SizedBox(height: 290.h),
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
                            navigateTo(context, PassSuccessNotifcationsView());
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
