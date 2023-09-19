import 'package:flutter/material.dart';
import 'package:foodninja1/core/logic/helper_methods.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../setLocation/view.dart';

class UploadPreviewView extends StatefulWidget {
  UploadPreviewView({Key? key}) : super(key: key);

  @override
  State<UploadPreviewView> createState() => _UploadPreviewViewState();
}

class _UploadPreviewViewState extends State<UploadPreviewView> {
  File? image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    final pickedImage2 = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
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
                  SizedBox(height: 59.h),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                            onPressed: _pickImage,
                            child: Text(
                              'Select Image',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'BenBold',
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        image != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Stack(
                                    children: [
                                      Image.file(
                                        File(image!.path),
                                        fit: BoxFit.cover,
                                        width: 245.w,
                                        height: 238.h,
                                      ),
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: IconButton(
                                            onPressed: _pickImage,
                                            icon: Image.asset(
                                                "assets/icons/CloseIcon.png")),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Text(
                                "No Image Selected",
                                style: TextStyle(fontSize: 20),
                              )
                      ],
                    ),
                  ),
                  SizedBox(height: 140.h),
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
                          navigateTo(context, SetLocationView());
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
