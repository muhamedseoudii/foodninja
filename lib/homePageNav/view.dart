import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../core/logic/helper_methods.dart';
import 'cartPage/view.dart';
import 'chatPage/view.dart';

import 'homepage/view.dart';
import 'profilePage/view.dart';



class HomePageNavView extends StatefulWidget {
  @override
  State<HomePageNavView> createState() => _HomePageNavViewState();
}

class _HomePageNavViewState extends State<HomePageNavView> {

  static List<Widget> pages = [
    HomePageView(),
    ProfilePageView(),
    CartPageView(),
    ChatPageView(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: pages[_selectedIndex],
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Container(
              width: 355.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 8.h,
                ),
                child: GNav(
                  gap: 8,
                  textStyle: TextStyle(
                    color: Color(0xff09051C),
                  ),
                  activeColor: getMaterialColor(
                    Color(0xff15BE77),
                  ),
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 12.h,
                  ),
                  tabBackgroundColor: getMaterialColor(
                    Color(0xff53E88B).withOpacity(.1),
                  ),
                  color: getMaterialColor(
                    Color(0xff53E88B).withOpacity(.5),
                  ),
                  tabs: [
                    GButton(
                      icon: Icons.home_filled,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                    GButton(
                      icon: Icons.shopping_cart,
                      text: 'Cart',
                    ),
                    GButton(
                      icon: Icons.sms,
                      text: 'Chat',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(
                          () {
                        _selectedIndex = index;
                      },
                    );
                  },
                ),
              ),
            ),
          ),
       );
    }
}