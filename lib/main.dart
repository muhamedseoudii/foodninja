import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/logic/helper_methods.dart';
import 'forgetPasword/pinCode/view.dart';
import 'forgetPasword/resetPass/view.dart';
import 'forgetPasword/successNotifications/view.dart';
import 'forgetPasword/view.dart';
import 'homePageNav/view.dart';
import 'onBoarding/view.dart';
import 'payment/view.dart';
import 'setLocation/view.dart';
import 'signIn/view.dart';
import 'signUp/signupprocess/view.dart';
import 'signUp/successNotifications/view.dart';
import 'signUp/view.dart';
import 'splash/view.dart';
import 'uploadPhoto/uploadPreview/view.dart';
import 'uploadPhoto/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FoodNinja',
            theme: ThemeData(
                platform: TargetPlatform.iOS,
                fontFamily: "Viga",
                primarySwatch: getMaterialColor(Color(0xff15BE77)),
                // scaffoldBackgroundColor: getMaterialColor(Color(0xffFEFEFF)),
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.white,
                    iconTheme: IconThemeData(color: Colors.black),
                    titleTextStyle: TextStyle(color: Colors.black)),
                textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.black)),
                iconTheme: IconThemeData(color: Colors.black)),
            darkTheme: ThemeData(
                platform: TargetPlatform.iOS,
                fontFamily: "Viga",
                scaffoldBackgroundColor: Colors.black,
                primarySwatch: getMaterialColor(Color(0xff15BE77)),
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.black,
                    iconTheme: IconThemeData(color: Colors.white),
                    titleTextStyle: TextStyle(color: Colors.white)),
                textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.white)),
                iconTheme: IconThemeData(color: Colors.white)),
            home: HomePageNavView(),
          );
        });
  }
}
