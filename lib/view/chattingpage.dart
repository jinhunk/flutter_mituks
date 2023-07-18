import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';
import 'package:flutter_mituks/profile/manprofile/diamondpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  static List<String> animalImagePath = [
    'image/Rectangle.png',
    'image/Rectangleone.png',
    'image/Rectangletwo.png',
    'image/Rectanglethree.png',
    'image/Rectanglesix.png',
    'image/Rectanglefour.png',
    'image/Rectanglesix.png',
  ];

  static List<String> titleList = [
    "김영철",
    "한서범",
    "손석구",
    "이창섭",
    "김현식",
    "송강준",
    "심수한",
  ];

  static List<String> language = [
    "영어",
    "한국어",
    "영어",
    "영어",
    "영어",
    "영어",
    "영어",
  ];

  static List<String> time = [
    "14:22",
    "14:22",
    "14:22",
    "14:22",
    "14:22",
    "14:22",
    "14:22",
  ];
  static List<String> description = [
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
    "안녕하세요, 오늘 뭐해요?",
  ];

  static List<String> region = [
    "서울시 서초구",
    "서울시 서초구",
    "서울시 서초구",
    "서울시 서초구",
    "서울시 서초구",
    "서울시 서초구",
    "서울시 서초구",
  ];

  static List<String> Level = [
    "image/level/bronz.svg",
    "image/level/silver.svg",
    "image/level/gold.svg",
    "image/level/ruby.svg",
    "image/level/emerald.svg",
    "image/level/sapphire.svg",
    "image/level/gold.svg",
  ];

  static List<String> gender = [
    "image/gender/female.svg",
    "image/gender/man.svg",
    "image/gender/female.svg",
    "image/gender/man.svg",
    "image/gender/female.svg",
    "image/gender/female.svg",
    "image/gender/female.svg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '메세지',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(
              18,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(
            12,
          ),
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return MessgeCard(
              levelimage: Level[index],
              image: animalImagePath[index],
              title: titleList[index],
              region: region[index],
              language: language[index],
              genderimage: gender[index],
              descriptionp: description[index],
            );
          },
          itemCount: animalImagePath.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: ScreenUtil().setHeight(
                14,
              ),
            );
          },
        ),
      ),
    );
  }
}

class MessgeCard extends StatelessWidget {
  final String image;
  final String levelimage;
  final String genderimage;
  final String title;
  final String language;
  final String region;
  final String descriptionp;

  const MessgeCard({
    super.key,
    required this.image,
    required this.title,
    required this.region,
    required this.language,
    required this.levelimage,
    required this.genderimage,
    required this.descriptionp,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(
                    20,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DetailProfilePage(),
                      ),
                    );
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        child: image != null
                            ? Image.asset(
                                image!,
                                fit: BoxFit.cover,
                              )
                            : const Text(''),
                      ),
                      Positioned(
                        top: ScreenUtil().setHeight(
                          40,
                        ),
                        left: ScreenUtil().setWidth(
                          50,
                        ),
                        child: Container(
                          width: ScreenUtil().setWidth(
                            14,
                          ),
                          height: ScreenUtil().setHeight(
                            14,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 122, 224, 125),
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(
                  16,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      levelimage != null
                          ? SvgPicture.asset(
                              levelimage!,
                              // width: 20,
                              // height: 30,
                              fit: BoxFit.cover,
                            )
                          : const Text(''),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(
                            2,
                          ),
                        ),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(
                              16,
                            ),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          6,
                        ),
                      ),
                      //피그마 남여이미지
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                        ),
                        width: ScreenUtil().setWidth(
                          58,
                        ),
                        height: ScreenUtil().setHeight(
                          20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "image/globe-light.svg",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(
                                2,
                              ),
                            ),
                            Text(
                              language,
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(
                                  12,
                                ),
                                color: const Color.fromARGB(
                                  255,
                                  82,
                                  82,
                                  82,
                                ),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          93,
                        ),
                      ),
                      Text(
                        '14:22',
                        style: TextStyle(
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                          fontSize: ScreenUtil().setSp(
                            12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      4,
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        descriptionp,
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
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          89,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            3,
                            201,
                            195,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                        ),
                        width: ScreenUtil().setWidth(24),
                        height: ScreenUtil().setHeight(
                          24,
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(
                                14,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(
              12,
            ),
          ),
          Container(
            color: const Color.fromARGB(
              255,
              245,
              245,
              245,
            ),
            width: ScreenUtil().setWidth(
              375,
            ),
            height: ScreenUtil().setHeight(
              1,
            ),
          ),
        ],
      ),
    );
  }
}
