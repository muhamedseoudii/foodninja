import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/forgetPasword/resetPass/view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/logic/helper_methods.dart';

class PinCodeView extends StatefulWidget {
  PinCodeView({Key? key}) : super(key: key);

  @override
  State<PinCodeView> createState() => _PinCodeViewState();
}

class _PinCodeViewState extends State<PinCodeView> {
  String code = "";

  @override
  void initState() {
    super.initState();
  }

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
                    Text("Enter 4-digit\nVerification code",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'BenBold',
                          color: Color(0xff09051C),
                        )),
                    SizedBox(height: 19.h),
                    Text(
                        "Code send to +6282045**** . This code will\nexpired in 01:30",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Benton',
                          color: Color(0xff000000),
                        )),
                    SizedBox(height: 38.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Container(
                        height: 103.h,
                        width: 347.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: PinCodeTextField(
                              length: 4,
                              enableActiveFill: true,
                              hintCharacter: "*",
                              hintStyle:
                                  TextStyle(fontSize: 37, color: Color(0xffB6B7B7)),
                              pinTheme: PinTheme(
                                  fieldHeight: 50,
                                  fieldWidth: 50,
                                  selectedFillColor: Color(0xffFFFFFF),
                                  activeFillColor:  Color(0xff15BE77),
                                  inactiveColor: Color(0xffF2F2F2),
                                  inactiveFillColor: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(10),
                                  shape: PinCodeFieldShape.box),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {},
                              onCompleted: (value) {
                                code = value;
                                print(code);
                              },
                              appContext: context,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 322.h),
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
                            navigateTo(context, ResetPassView());
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
