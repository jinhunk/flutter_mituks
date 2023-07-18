import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/auth/phoneauth.dart';
import 'package:flutter_mituks/auth/phoneprofile.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/defaultlayout.dart';
import 'package:flutter_mituks/passwordpage.dart';
import 'package:flutter_mituks/singup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(
            176.1,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(
                "image/loginlogo/logintop.svg",
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  16.03,
                ),
              ),
              SvgPicture.asset(
                "image/loginlogo/METALK.svg",
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  86,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => RootTab(),
                    ),
                  );
                  //1~7일차 출석체크 모델
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        height: ScreenUtil().setHeight(
                          662,
                        ),
                        width: ScreenUtil().setWidth(
                          375,
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              // bottom: 500,
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 5,
                                  sigmaY: 5,
                                ),
                                child: Container(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                // left: 20.0,
                                top: ScreenUtil().setHeight(
                                  20,
                                ),
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '출석체크',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        20,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      4,
                                    ),
                                  ),
                                  Text(
                                    '7일 연속 출석 시 500C 지급',
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CouponContanier(
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        title: '1일차',
                                        description: "100c",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        image: "image/coincoin.svg",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CouponContanier(
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        image: "image/coincoin.svg",
                                        title: '2일차',
                                        description: "100c",
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(
                                          12,
                                        ),
                                      ),
                                      CouponContanier(
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        image: "image/coincoin.svg",
                                        title: '3일차',
                                        description: "100c",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CouponContanier(
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        image: "image/coincoin.svg",
                                        title: '4일차',
                                        description: "100c",
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(
                                          12,
                                        ),
                                      ),
                                      CouponContanier(
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        image: "image/coincoin.svg",
                                        title: '5일차',
                                        description: "100c",
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(
                                          12,
                                        ),
                                      ),
                                      CouponContanier(
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            2,
                                            161,
                                            156,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(
                                            14,
                                          ),
                                        ),
                                        width: ScreenUtil().setWidth(
                                          98,
                                        ),
                                        height: ScreenUtil().setHeight(
                                          98,
                                        ),
                                        title: '6일차',
                                        image: "image/coincoin.svg",
                                        description: "100c",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      12,
                                    ),
                                  ),
                                  Image.asset(
                                    "image/iconbuttonseven.png",
                                    scale: 0.95,
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      130,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.pushReplacement<void, void>(
                                      //   context,
                                      //   MaterialPageRoute<void>(
                                      //     builder: (BuildContext context) =>
                                      //         const PhoneAuth(),
                                      //   ),
                                      // );
                                    },
                                    child: Container(
                                      height: ScreenUtil().setHeight(
                                        56,
                                      ),
                                      width: ScreenUtil().setWidth(
                                        335,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          15,
                                        ),
                                        color: const Color.fromARGB(
                                          255,
                                          3,
                                          201,
                                          195,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '확인',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(
                                              16,
                                            ),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      247,
                      227,
                      23,
                    ),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  height: ScreenUtil().setHeight(
                    56,
                  ),
                  width: ScreenUtil().setWidth(
                    335,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(
                        74.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "image/loginlogo/kakao.svg",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            10,
                          ),
                        ),
                        Text(
                          '카카오 계정으로 시작하기',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(
                              16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  12,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(
                        0,
                        3,
                      ), // changes position of shadow
                    ),
                  ],
                ),
                height: ScreenUtil().setHeight(
                  56,
                ),
                width: ScreenUtil().setWidth(
                  335,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(
                      77.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "image/loginlogo/goole.svg",
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          15.5,
                        ),
                      ),
                      Text(
                        '구글계정으로 시작하기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  12,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const PhoneProfile(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  height: ScreenUtil().setHeight(
                    56,
                  ),
                  width: ScreenUtil().setWidth(
                    335,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(
                        87,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "image/loginlogo/apple.svg",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            12,
                          ),
                        ),
                        Text(
                          'Apple로 시작하기',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(
                              16,
                            ),
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CouponContanier extends StatelessWidget {
  final String title;
  final String? image;
  final String description;
  final double width;
  final double height;
  final TextStyle style;

  const CouponContanier({
    super.key,
    required this.title,
    this.image,
    required this.description,
    required this.width,
    required this.height,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(
          245,
          245,
          245,
          245,
        ),
      ),
      width: width,
      height: height,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(
            height: ScreenUtil().setHeight(
              6,
            ),
          ),
          image != null
              ? SvgPicture.asset(
                  image!,
                )
              : const Text(''),
          SizedBox(
            height: ScreenUtil().setHeight(
              2,
            ),
          ),
          Text(
            description,
            style: style,
          ),
        ],
      ),
    );
  }
}
