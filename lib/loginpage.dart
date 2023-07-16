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
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    builder: (context) {
                      return SizedBox(
                        // height: height / 1.32,
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
                                  color: Colors.black.withOpacity(
                                    0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                // left: 20.0,
                                top: 20.0,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    '출석체크',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    '7일 연속 출석 시 500C 지급',
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CouponContanier(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '1일차',
                                        description: "100c",
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CouponContanier(
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '2일차',
                                        description: "100c",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CouponContanier(
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '3일차',
                                        description: "100c",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CouponContanier(
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '4일차',
                                        description: "100c",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CouponContanier(
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '5일차',
                                        description: "100c",
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CouponContanier(
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            3,
                                            201,
                                            195,
                                          ),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8.0,
                                        title: '6일차',
                                        description: "100c",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CouponContanier(
                                    style: const TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          3,
                                          201,
                                          195,
                                        ),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                    height: MediaQuery.of(context).size.height /
                                        8.0,
                                    title: '7일차',
                                    description: "500c",
                                  ),
                                  const SizedBox(
                                    height: 130,
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
                                      height: 60,
                                      width: width / 1.1,
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
                                      child: const Center(
                                        child: Text(
                                          '확인',
                                          style: TextStyle(
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
        color: const Color.fromARGB(255, 240, 236, 236),
      ),
      width: width,
      height: height,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          image != null
              ? Image.asset(
                  image!,
                  width: 20,
                  height: 30,
                )
              : const Text(''),
          Text(
            description,
            style: style,
          ),
        ],
      ),
    );
  }
}
