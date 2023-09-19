import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../core/logic/helper_methods.dart';
import 'uploadPreview/view.dart';

class UploadPhotoView extends StatefulWidget {
  UploadPhotoView({Key? key}) : super(key: key);

  @override
  State<UploadPhotoView> createState() => _UploadPhotoViewState();
}

class _UploadPhotoViewState extends State<UploadPhotoView> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
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
          SafeArea(
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
                  Text("Upload Your Photo\nProfile",
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
                  Center(
                    child: Container(
                      width: 325.h,
                      height: 130.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(
                                    color: Color(0xffFFFFFF), width: 2)),
                            backgroundColor: Color(0xffFFFFFF),
                            shadowColor: Color(0xffF4F4F4),
                            fixedSize: Size.fromHeight(55)),
                        onPressed: () {
                          getImage(ImageSource.gallery);
                          navigateTo(context, UploadPreviewView());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/galleryIcon.png",
                                height: 84.h, width: 88.w),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Container(
                      width: 325.h,
                      height: 130.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(
                                    color: Color(0xffFFFFFF), width: 2)),
                            backgroundColor: Color(0xffFFFFFF),
                            shadowColor: Color(0xffF4F4F4),
                            fixedSize: Size.fromHeight(55)),
                        onPressed: () {
                          getImage(ImageSource.camera);
                          navigateTo(context, UploadPreviewView());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/CameraIcon.png",
                              width: 77.w,
                              height: 84.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 165.h),
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
                          navigateTo(context, UploadPreviewView());
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
          )
        ],
      ),
    );
  }
}
