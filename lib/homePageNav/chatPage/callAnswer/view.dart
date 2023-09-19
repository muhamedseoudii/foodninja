import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'package:foodninja1/homePageNav/chatPage/chatDetails/view.dart';

class CallAnswerView extends StatefulWidget {
   CallAnswerView({Key? key}) : super(key: key);

  @override
  State<CallAnswerView> createState() => _CallAnswerViewState();
}

class _CallAnswerViewState extends State<CallAnswerView> {
  bool isMute = false;

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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Image.asset(
                      "assets/images/person4.png",
                      fit: BoxFit.scaleDown,
                      width: 170.w,
                      height: 170.h,
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Text(
                    "Courtney Henry",
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
                    "15.23 Min",
                    style: TextStyle(
                      fontSize: 20,
                      wordSpacing: .5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Benton',
                      color: Color(0xff3B3B3B).withOpacity(.3),
                    ),
                  ),
                  SizedBox(height: 177.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          isMute = !isMute;
                          setState(() {});
                        },
                        icon: isMute
                            ? SvgPicture.asset(
                          "assets/icons/MuteIcon.svg",
                        )
                            : SvgPicture.asset(
                          "assets/icons/SpeakerOn.svg",
                        ),
                      ),
                      IconButton(
                        iconSize: 100,
                        onPressed: () {
                          navigateTo(context, ChatDetailsView());
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/CloseCall.svg",
                        ),
                      )
                    ],
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
