import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mituks/loginpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
      onWillPop: () async => false,
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(
              10,
            ),
            left: ScreenUtil().setWidth(
              10,
            ),
          ),
          child: SvgPicture.asset(
            "image/splashscreens.svg",
          ),
        ),
      ),
    ));
  }
}
