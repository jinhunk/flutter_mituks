import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExOnePage extends StatefulWidget {
  const ExOnePage({super.key});

  @override
  State<ExOnePage> createState() => _ExOnePageState();
}

class _ExOnePageState extends State<ExOnePage> {
  bool correction = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(
                  20,
                ),
                top: ScreenUtil().setHeight(
                  20,
                ),
              ),
              child: Container(
                width: ScreenUtil().setWidth(
                  335,
                ),
                height: ScreenUtil().setHeight(
                  450,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color.fromARGB(
                    255,
                    250,
                    250,
                    250,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: ScreenUtil().setHeight(
                        20,
                      ),
                      left: ScreenUtil().setWidth(
                        16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "image/alert-circle-solid.svg",
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  6,
                                ),
                              ),
                              Text(
                                '환급 전 꼭 확인해주세요.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(
                                    18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              20,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "image/infochack.svg",
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  4,
                                ),
                              ),
                              Text(
                                "현금 환금 신청은 인증 이후 이용하실 수 있습니다.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              8,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(
                                    5,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(120),
                                  ),
                                  height: ScreenUtil().setHeight(
                                    2,
                                  ),
                                  width: ScreenUtil().setWidth(
                                    2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  6,
                                ),
                              ),
                              const Text(
                                '인증 자의 인증 정보 (신분증 / 휴대전화 등)과 인증 자의\n입금 정보(계좌 소유자 등)이 상이할 경우 인증 및 현금 환\n급이 거절될 수 있습니다.',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              20,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "image/infochack.svg",
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  4,
                                ),
                              ),
                              Text(
                                "아래 양식에 따라 메일을 제출해 주세요.",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              12,
                            ),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(
                              303,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(
                                  255,
                                  245,
                                  245,
                                  245,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(
                                  16,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    '받는사람',
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        115,
                                        115,
                                        115,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      12,
                                    ),
                                  ),
                                  const Text(
                                    '| ',
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        217,
                                        217,
                                        217,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      12,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      // textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        hintText: "chlwlsgur23@gmail.com",
                                        hintStyle: TextStyle(
                                          fontSize: ScreenUtil().setSp(
                                            13,
                                          ),
                                          color: const Color.fromARGB(
                                            255,
                                            38,
                                            38,
                                            38,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              4,
                            ),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(
                              303,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(
                                  255,
                                  245,
                                  245,
                                  245,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(
                                  16,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    '메일제목',
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        115,
                                        115,
                                        115,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      12,
                                    ),
                                  ),
                                  const Text(
                                    '| ',
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        217,
                                        217,
                                        217,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      12,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      // textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        hintText: "환전 인증 신청 _ 신청자 아이디",
                                        hintStyle: TextStyle(
                                          fontSize: ScreenUtil().setSp(
                                            13,
                                          ),
                                          color: const Color.fromARGB(
                                            255,
                                            38,
                                            38,
                                            38,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              4,
                            ),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(
                              303,
                            ),
                            height: ScreenUtil().setHeight(
                              172,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(16),
                                top: ScreenUtil().setHeight(
                                  10,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '본문',
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                        255,
                                        115,
                                        115,
                                        115,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(
                                      8,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '신청자 성명:',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Text(
                                        '신청자 휴대 전화 번호(본인 명의):',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: ScreenUtil().setHeight(
                                  //     2,
                                  //   ),
                                  // ),
                                  Row(
                                    children: [
                                      Text(
                                        '신청자 아이디:',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //환전할 코인금액을 입력하세요,
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20),
                top: ScreenUtil().setHeight(
                  20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "환전할 코인금액을 입력하세요.",
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
                  const Text(
                    "최소 10,000코인 이상 환전이 가능해요.",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        82,
                        82,
                        82,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      24,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(
                        255,
                        250,
                        250,
                        250,
                      ),
                      border: Border.all(
                        color: const Color.fromARGB(
                          255,
                          229,
                          229,
                          229,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(
                              16,
                            ),
                            right: ScreenUtil().setWidth(
                              14,
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "image/smallcoin.svg",
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  2,
                                ),
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "1,000",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Text(
                                "C",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      37,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(
                        255,
                        245,
                        245,
                        245,
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(
                              16,
                            ),
                            right: ScreenUtil().setWidth(
                              14,
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "image/ww.svg",
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  2,
                                ),
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "1,000",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Text(
                                "원",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 23, 23, 23),
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: ScreenUtil().setWidth(
                            150,
                          ),
                          bottom: ScreenUtil().setHeight(
                            37,
                          ),
                          child: SvgPicture.asset(
                            "image/arrow.svg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      12,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '수수료 포함 차감되길 Coin',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 63, 63, 63),
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          150,
                        ),
                      ),
                      Text(
                        '0 Coin',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(
                            13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      6,
                    ),
                  ),
                  Text(
                    '실버등급 현금 지급 수수료 18%',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        13,
                      ),
                      color: const Color.fromARGB(
                        255,
                        115,
                        115,
                        115,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                30,
              ),
            ),
            //입금될 통장 계좌 정보
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(
                  20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "입금될 통장 계좌 정보",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(
                            20,
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          89,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              correction = !correction;
                            });
                            print(correction);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                            height: ScreenUtil().setHeight(
                              32,
                            ),
                            width: ScreenUtil().setWidth(
                              76,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "image/pen.svg",
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(4),
                                ),
                                correction
                                    ? const Text(
                                        '수정완료',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text(
                                        '수정하기',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      24,
                    ),
                  ),
                  Text(
                    "통장 소유주",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  //수정완료
                  correction
                      ? Container(
                          width: ScreenUtil().setWidth(
                            335,
                          ),
                          height: ScreenUtil().setHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            color: const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(
                                16,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "임보람",
                                      hintStyle: TextStyle(
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                        color: const Color.fromARGB(
                                          255,
                                          23,
                                          23,
                                          23,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: ScreenUtil().setWidth(
                            335,
                          ),
                          height: ScreenUtil().setHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            color: const Color.fromARGB(
                              255,
                              245,
                              245,
                              245,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(
                                16,
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '임보람',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(
                                      14,
                                    ),
                                    color: const Color.fromARGB(
                                      255,
                                      163,
                                      163,
                                      163,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Text(
                    "은행명",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  correction
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      20.0,
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: ScreenUtil().setHeight(
                                        576,
                                      ),
                                      child: Stack(
                                        children: [
                                          BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 5,
                                              sigmaY: 5,
                                            ),
                                            child: Container(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: ScreenUtil().setWidth(
                                                  20,
                                                ),
                                                top: ScreenUtil().setHeight(
                                                  20,
                                                ),
                                              ),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    '은행을 선택해주세요',
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      16,
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            14,
                                                          ),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIcon.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              'NH농협',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankone.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              'IBK 기업',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankkakao.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text('카카오뱅크',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      ScreenUtil()
                                                                          .setSp(
                                                                    13,
                                                                  ),
                                                                  color: const Color
                                                                      .fromARGB(
                                                                    255,
                                                                    64,
                                                                    64,
                                                                    64,
                                                                  ),
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setWidth(
                                                      12,
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankkm.svg",
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  ScreenUtil()
                                                                      .setWidth(
                                                                12,
                                                              ),
                                                            ),
                                                            Text(
                                                              'KB국민',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '신한',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '새마을',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      12,
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            14,
                                                          ),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIcon.svg",
                                                            ),
                                                            Text(
                                                              'KB농협',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankone.svg",
                                                            ),
                                                            Text(
                                                              'IBK 기업',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankkakao.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '카카오뱅크',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      12,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            14,
                                                          ),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankkm.svg",
                                                            ),
                                                            Text(
                                                              'NB국민',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '신한',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                              .fromARGB(
                                                            255,
                                                            236,
                                                            232,
                                                            232,
                                                          ),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '새마을',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      12,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/Bankkm.svg",
                                                            ),
                                                            Text(
                                                              'NB국민',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '신한',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIsinhan.svg",
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  ScreenUtil()
                                                                      .setHeight(
                                                                2,
                                                              ),
                                                            ),
                                                            Text(
                                                              '새마을',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      12,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIcon.svg",
                                                            ),
                                                            Text(
                                                              'NH농협',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIcon.svg",
                                                            ),
                                                            Text(
                                                              'NH농협',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          12,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(14),
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              236, 232, 232),
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          80,
                                                        ),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          104,
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Bank(
                                                              image:
                                                                  "image/bank/BankIcon.svg",
                                                            ),
                                                            Text(
                                                              'NH농협',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  13,
                                                                ),
                                                                color: const Color
                                                                    .fromARGB(
                                                                  255,
                                                                  64,
                                                                  64,
                                                                  64,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            });
                          },
                          child: Container(
                            width: ScreenUtil().setWidth(
                              335,
                            ),
                            height: ScreenUtil().setHeight(
                              48,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(
                                  255,
                                  229,
                                  229,
                                  229,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(
                                  16,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '농협은행',
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      color: const Color.fromARGB(
                                        255,
                                        23,
                                        23,
                                        23,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: ScreenUtil().setWidth(
                                        21,
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      "image/chevron-down.svg",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      //수정완료
                      : Container(
                          width: ScreenUtil().setWidth(
                            335,
                          ),
                          height: ScreenUtil().setHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(
                              255,
                              245,
                              245,
                              245,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(
                                16,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '농협은행',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(
                                      14,
                                    ),
                                    color: const Color.fromARGB(
                                      255,
                                      163,
                                      163,
                                      163,
                                    ),
                                  ),
                                ),
                                // SvgPicture.asset(
                                //   "image/chevron-down.svg",
                                // ),
                              ],
                            ),
                          ),
                        ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Text(
                    "계좌번호",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  correction
                      ? Container(
                          width: ScreenUtil().setWidth(
                            335,
                          ),
                          height: ScreenUtil().setHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(
                                16,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "351-1234-1234-34",
                                      hintStyle: TextStyle(
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                        color: const Color.fromARGB(
                                          255,
                                          23,
                                          23,
                                          23,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: ScreenUtil().setWidth(
                            335,
                          ),
                          height: ScreenUtil().setHeight(
                            48,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(
                              255,
                              245,
                              245,
                              245,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(
                                16,
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '351-1234-1234-34,',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(
                                      14,
                                    ),
                                    color: const Color.fromARGB(
                                      255,
                                      163,
                                      163,
                                      163,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      172,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 248, 246, 246),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: ScreenUtil().setHeight(
                            16,
                          ),
                          left: ScreenUtil().setWidth(
                            16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "image/mono.svg",
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      4,
                                    ),
                                  ),
                                  Text(
                                    '유의사항',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        64,
                                        64,
                                        64,
                                      ),
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(
                                  8,
                                ),
                              ),
                              Notice(
                                title: "현금 지급 신청은 늘 가능합니다.",
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Notice(
                                title: "현금 지급 수수료는 레벨등급에 따라 차등 적용됩니다.",
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Notice(
                                title:
                                    "현금 지급 신청 후 공요일을 제외한\n일주일 내내 입금 처리 됩니다..",
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Notice(
                                title:
                                    "환전 금액이 5만원 이상 초과될 시에는,3.3%사업소득세\n원천징수 후 입금 처리됩니다.",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      56,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: const Color.fromARGB(
                          255,
                          3,
                          201,
                          195,
                        ),
                      ),
                      height: ScreenUtil().setHeight(
                        56,
                      ),
                      width: ScreenUtil().setWidth(
                        335,
                      ),
                      child: const Center(
                        child: Text(
                          '환전하기',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bank extends StatelessWidget {
  final String image;
  const Bank({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: image != null
          ? SvgPicture.asset(
              image,
            )
          : const Text(
              "",
            ),
    );
  }
}

//유의사항
class Notice extends StatelessWidget {
  final String title;
  const Notice({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(
              7,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(120),
            ),
            height: ScreenUtil().setHeight(2),
            width: ScreenUtil().setWidth(
              2,
            ),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(
            6,
          ),
        ),
        Text(
          title,
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
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
