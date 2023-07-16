import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PhoneProfileThree extends StatefulWidget {
  const PhoneProfileThree({super.key});

  @override
  State<PhoneProfileThree> createState() => _PhoneProfileThreeState();
}

class _PhoneProfileThreeState extends State<PhoneProfileThree> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(
                  20,
                ),
                top: ScreenUtil().setHeight(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Container(
                      width: ScreenUtil().setWidth(
                        335,
                      ),
                      height: ScreenUtil().setHeight(
                        4,
                      ),
                      child: const LinearProgressIndicator(
                        value: 1.0,
                        backgroundColor: Color.fromARGB(
                          255,
                          229,
                          229,
                          229,
                        ),
                        color: Colors.black45,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(
                            255,
                            3,
                            201,
                            195,
                          ),
                        ),
                        minHeight: 5.0,
                        semanticsLabel: 'semanticsLabel',
                        semanticsValue: 'semanticsValue',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(
                        6,
                      ),
                      right: ScreenUtil().setWidth(
                        20,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '3/3',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenUtil().setSp(
                              12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '당신에 보여주세요!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(
                        20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      2,
                    ),
                  ),
                  Text(
                    '당신의 매력을 어필해 보세요!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(14),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      24,
                    ),
                  ),
                  Text(
                    '사진등록',
                    style: TextStyle(
                      color: const Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                      fontSize: ScreenUtil().setSp(
                        16,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      2,
                    ),
                  ),
                  Text(
                    '5개까지 등록할 수 있어요.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      14,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PictureContainerMain(),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        PictureContainer(),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        PictureContainer(),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        PictureContainer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      36,
                    ),
                  ),
                  Text(
                    '설명',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(
                        16,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  const Description(),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                  ),
                  Text(
                    '음성 메세지(선택)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(
                        16,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      2,
                    ),
                  ),
                  Text(
                    '최소 5초, 최대 10초까지 등록할 수 있어요.',
                    style: TextStyle(
                      color: const Color.fromARGB(
                        255,
                        82,
                        82,
                        82,
                      ),
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      14,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        245,
                        245,
                        245,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    height: ScreenUtil().setHeight(
                      116,
                    ),
                    width: ScreenUtil().setHeight(
                      335,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          height: ScreenUtil().setHeight(
                            60,
                          ),
                          width: ScreenUtil().setHeight(
                            335,
                          ),
                        ),
                        Positioned(
                          left: ScreenUtil().setWidth(
                            20,
                          ),
                          top: ScreenUtil().setHeight(
                            10,
                          ),
                          child: SvgPicture.asset(
                            "image/mic.svg",
                          ),
                        ),
                        Positioned(
                          left: ScreenUtil().setWidth(
                            70,
                          ),
                          top: ScreenUtil().setHeight(
                            14,
                          ),
                          child: SvgPicture.asset(
                            "image/radio.svg",
                          ),
                        ),
                        Positioned(
                          left: 256,
                          top: 22,
                          child: Row(
                            children: [
                              Text(
                                '0:00 ',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    23,
                                    23,
                                    23,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                ),
                              ),
                              Text(
                                '/ 0:10',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    64,
                                    64,
                                    64,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: ScreenUtil().setHeight(72),
                          left: ScreenUtil().setWidth(
                            86,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(
                                  225,
                                  229,
                                  229,
                                  229,
                                ),
                              ),
                              color: const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ),
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                            height: ScreenUtil().setHeight(
                              32,
                            ),
                            width: ScreenUtil().setHeight(
                              90,
                            ),
                            child: Center(
                              child: Text(
                                '다시 녹음하기',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    212,
                                    212,
                                    212,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: ScreenUtil().setHeight(
                            72,
                          ),
                          left: ScreenUtil().setWidth(
                            184,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                255,
                                217,
                                247,
                                246,
                              ),
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                            height: ScreenUtil().setHeight(
                              32,
                            ),
                            width: ScreenUtil().setHeight(
                              90,
                            ),
                            child: Center(
                              child: Text(
                                '저장하기',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const RootTab(),
                        ),
                      );
                    },
                    child: Container(
                      width: ScreenUtil().setWidth(
                        335,
                      ),
                      height: ScreenUtil().setHeight(
                        56,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          3,
                          201,
                          195,
                        ),
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '완료',
                          style: TextStyle(
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(
                              16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//메인사진
class PictureContainerMain extends StatelessWidget {
  const PictureContainerMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: ScreenUtil().setHeight(
        134,
      ),
      width: ScreenUtil().setWidth(
        100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(
          255,
          243,
          252,
          252,
        ),
        border: Border.all(
          color: const Color.fromARGB(
            255,
            3,
            201,
            195,
          ),
        ),
      ),
      child: Stack(
        children: [
          const Center(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Color.fromARGB(
                255,
                177,
                238,
                236,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(
                22,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromARGB(
                  255,
                  3,
                  201,
                  195,
                ),
              ),
              width: ScreenUtil().setWidth(
                58,
              ),
              height: ScreenUtil().setHeight(
                20,
              ),
              child: Center(
                child: Text(
                  '메인사진',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(
                      12,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//나머지 사진
class PictureContainer extends StatelessWidget {
  const PictureContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: ScreenUtil().setHeight(
        134,
      ),
      width: ScreenUtil().setWidth(
        100,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          245,
          245,
          245,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.camera_alt_rounded,
        color: Color.fromARGB(
          255,
          212,
          212,
          212,
        ),
      ),
    );
  }
}

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  late int maxlength = 500;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: ScreenUtil().setWidth(
        335,
      ),
      height: ScreenUtil().setHeight(
        128,
      ),
      child: TextFormField(
        maxLength: maxlength,
        maxLines: 7,
        keyboardType: TextInputType.emailAddress,
        // controller: _controlleremail,
        decoration: const InputDecoration(
          // counterText: '$maxlength0자',
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          //누를떄 컨테이너 모양
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Color.fromARGB(
                255,
                238,
                238,
                238,
              ),
            ),
          ),
          //누르기 전 컨테이너 모양
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              color: Color.fromARGB(
                255,
                238,
                238,
                238,
              ),
            ),
          ),
          filled: true,
          fillColor: Color.fromARGB(
            255,
            250,
            250,
            250,
          ),
          hintText: '당신에 대해 500자 이내로 설명해주세요.',
          // helperText: "이메일형식@gmail.com",
          hintStyle: TextStyle(
            fontSize: 13.0,
          ),
        ),
        onChanged: ((value) {
          setState(
            () {
              // userId = value;
            },
          );
        }),
      ),
    );
  }
}
