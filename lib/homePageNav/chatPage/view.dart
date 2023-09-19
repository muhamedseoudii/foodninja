import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja1/homePageNav/chatPage/chatDetails/view.dart';

import '../../core/logic/helper_methods.dart';
import 'model.dart';

class ChatPageView extends StatefulWidget {
  const ChatPageView({Key? key}) : super(key: key);

  @override
  State<ChatPageView> createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  List<ChatModel> list = [
    ChatModel(
        userImage: "assets/images/person1.png",
        userName: "Dianne Russell",
        message: "Your Order Just Arrived!",
        time: "20:00",
        isread: true),
    ChatModel(
        userImage: "assets/images/person2.png",
        userName: "Guy Hawkins",
        message: "Your Order Just Arrived!",
        time: "20:00",
        isread: true),
    ChatModel(
        userImage: "assets/images/person3.png",
        userName: "Leslie Alexander",
        message: "Your Order Just Arrived!",
        time: "20:00",
        isread: true),
    ChatModel(
        userImage: "assets/images/person1.png",
        userName: "Courtney Henry",
        message: "Your Order Just Arrived!",
        time: "20:00",
        isread: true),
  ];

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
                      "Chat",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'BenBold',
                        color: Color(0xff09051C),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 700.h,
                      width: 350.w,
                      child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              navigateTo(context, ChatDetailsView());
                            },
                            child: Container(
                                  width: 350.w,
                                  height: 81.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xffFFFFFF)),
                                  child: ListTile(

                                    leading: Image.asset(
                                      list[index].userImage,
                                      fit: BoxFit.scaleDown,
                                      width: 62.w,
                                      height: 62.h,
                                    ),
                                    title: Text(
                                      list[index].userName,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Benton',
                                        color: Color(0xff09051C),
                                      ),
                                    ),
                                    subtitle: Text(
                                      list[index].message,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        wordSpacing: .5,
                                        fontFamily: 'Benton',
                                        color: Color(0xff3B3B3B).withOpacity(.3),
                                      ),
                                    ),
                                    trailing: Text(
                                      list[index].time,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        wordSpacing: .5,
                                        fontFamily: 'Benton',
                                        color: Color(0xff3B3B3B).withOpacity(.3),
                                      ),
                                    ),
                                  ),
                                ),
                          ),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20.h),
                          itemCount: list.length),
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
