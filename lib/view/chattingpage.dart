import 'dart:io';

import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  static List<String> animalImagePath = [
    'images/kimm.png',
    'images/kimm.png',
    'images/kimm.png',
    'images/kimm.png',
    'images/kimm.png',
    'images/kimm.png',
    'images/kimm.png',
  ];

  static List<String> titleList = [
    "김영아",
    "손정호",
    "신주아",
    "김병진",
    "송연아",
    "송연아",
    "송연아",
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

  static List<String> level = [
    "images/level/crown-illust.png",
    "images/level/crown-selver.png",
    "images/level/crown-gold.png",
    "images/level/crown-illust.png",
    "images/level/crown-selver.png",
    "images/level/crown-gold.png",
    "images/level/crown-gold.png",
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
          '메세지',
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
          itemBuilder: (BuildContext context, int inedx) {
            return MessgeCard(
              image: animalImagePath[inedx],
              title: titleList[inedx],
              description: description[inedx],
              language: language[inedx],
              count: '카운트',
              time: '14:22',
              imagelevel: level[inedx],
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
  final String imagelevel;
  final String title;
  final String time;
  final String language;
  final String count;
  final String description;

  const MessgeCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.language,
    required this.time,
    required this.count,
    required this.imagelevel,
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
                child: Stack(
                  children: [
                    Image.asset(
                      "images/Rectanglechatting.png",
                    ),
                    Positioned(
                      top: 45,
                      left: 50,
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
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imagelevel,
                      ),
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
                        width: 20,
                      ),
                      Container(
                        width: width / 6.5,
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 230, 230),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/globe-light.png",
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              language,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Text(time),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(description),
                      const SizedBox(
                        width: 87,
                      ),
                      Text(
                        count,
                        style: const TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ],
              )
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
