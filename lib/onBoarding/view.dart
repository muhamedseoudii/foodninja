import 'package:flutter/material.dart';

import '../signUp/view.dart';
import '../splash/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currPage = 0;
  List<String> title = [
    "Find your  Comfort\n Food here",
    "Food Ninja is Where Your\n Comfort Food Lives"
  ];
  List<String> desc = [
    "Here You Can find a chef or dish for every\n taste and color. Enjoy!",
    "Enjoy a fast and smooth food delivery at\n your doorstep",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 425,
              child: PageView(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    print(value);
                    currPage = value;
                    setState(() {});
                  },
                  children: List.generate(
                    2,
                        (index) =>
                        Image.asset(
                          "assets/images/onboarding${currPage + 1}.png",
                          height: 434.22,
                          width: 408.5,fit: BoxFit.cover,
                        ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(height: 32),
                  Text(
                    title[currPage],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff09051C),
                        fontSize: 22,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        fontFamily: "BenBold"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    desc[currPage],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                      height: 1.7,
                      fontFamily: 'Benton',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40),
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
                        if (currPage == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpView(),
                            ),
                          );
                        } else {
                          currPage++;
                          setState(() {});
                        }
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'BenBold',
                          color: Color(0xffFFFFFF)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
