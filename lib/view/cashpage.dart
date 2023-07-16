import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';


class CashPage extends StatefulWidget {
  const CashPage({super.key});

  @override
  State<CashPage> createState() => _CashPageState();
}

class _CashPageState extends State<CashPage> {
  static List<String> animalImagePath = [
    'images/kim.png',
    'images/kim.png',
    'images/kim.png',
    'images/kim.png',
    'images/kim.png',
    'images/kim.png',
    'images/kim.png',
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

  static List<String> level = [
    "images/level/crown-illust.png",
    "images/level/crown-selver.png",
    "images/level/crown-gold.png",
    "images/level/crown-illust.png",
    "images/level/crown-selver.png",
    "images/level/crown-gold.png",
    "images/level/crown-gold.png",
  ];

  static List<String> gender = [
    "images/gender/female.png",
    "images/gender/male.png",
    "images/gender/female.png",
    "images/gender/male.png",
    "images/gender/female.png",
    "images/gender/female.png",
    "images/gender/female.png",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          '다이아몬드 선물 리스트',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return MessgeCard(
              levelimage: level[index],
              image: animalImagePath[index],
              title: titleList[index],
              region: region[index],
              language: language[index],
              genderimage: gender[index],
            );
          },
          itemCount: animalImagePath.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 20,
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
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const DetailProfilePage(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(125),
                        child: Container(
                          width: 70,
                          height: 70,
                          child: image != null
                              ? Image.asset(
                                  image!,
                                  fit: BoxFit.cover,
                                )
                              : const Text(''),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 55,
                        child: Container(
                          width: width / 25.0,
                          height: 15,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 122, 224, 125),
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      levelimage != null
                          ? Image.asset(
                              levelimage!,
                              // width: 20,
                              // height: 30,
                              fit: BoxFit.cover,
                            )
                          : const Text(''),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      //피그마 남여이미지
                      genderimage != null
                          ? Image.asset(
                              genderimage!,
                              fit: BoxFit.cover,
                            )
                          : const Text(''),
                      const SizedBox(
                        width: 75,
                      ),
                      Container(
                        height: 40,
                        width: width / 9.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 207, 246, 242),
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: Image.asset("images/mdi_hand-extended.png"),
                      ),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_sharp,
                        color: Colors.black,
                        size: 17.0,
                      ),
                      Text(region),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/globe-light.png",
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(language),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: const Color.fromARGB(255, 232, 229, 229),
            width: width / 1.0,
            height: 1,
          ),
        ],
      ),
    );
  }
}
