import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';
import 'package:flutter_mituks/profile/manprofile/diamondpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CashPage extends StatefulWidget {
  const CashPage({super.key});

  @override
  State<CashPage> createState() => _CashPageState();
}

class _CashPageState extends State<CashPage> {
  static List<String> animalImagePath = [
    'image/person/personone.png',
    'image/person/persontwo.png',
    'image/person/personthree.png',
    'image/person/personfour.png',
    'image/person/personfive.png',
    'image/person/personsix.png',
    'image/person/personsix.png',
  ];

  static List<String> titleList = [
    "김영아,23세",
    "손정호,28세",
    "신주아,23세",
    "김병진,23세",
    "송연아,23세",
    "송연아,23세",
    "송연아,23세",
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
    "image/level/silver.svg",
    "image/level/emerald.svg",
    "image/level/gold.svg",
    "image/level/gold.svg",
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
          '다이아몬드 선물 리스트',
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
            8,
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
            );
          },
          itemCount: animalImagePath.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: ScreenUtil().setHeight(
                13,
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

  const MessgeCard({
    super.key,
    required this.image,
    required this.title,
    required this.region,
    required this.language,
    required this.levelimage,
    required this.genderimage,
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
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            16,
                          ),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          6,
                        ),
                      ),
                      //피그마 남여이미지
                      genderimage != null
                          ? SvgPicture.asset(
                              genderimage!,
                              fit: BoxFit.cover,
                            )
                          : const Text(''),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          83,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const DiamondPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: ScreenUtil().setHeight(
                            40,
                          ),
                          width: ScreenUtil().setWidth(
                            40,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 207, 246, 242),
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                          ),
                          child: SvgPicture.asset(
                            "image/diamond.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "image/map.svg",
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          2,
                        ),
                      ),
                      Text(
                        region,
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(
                          6,
                        ),
                      ),
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
