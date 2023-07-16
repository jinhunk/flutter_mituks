import 'package:flutter/material.dart';



class BarPageOne extends StatefulWidget {
  const BarPageOne({super.key});

  @override
  State<BarPageOne> createState() => _BarPageOneState();
}

class _BarPageOneState extends State<BarPageOne> {
  static List<String> animalImagePath = [
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
    'images/Rectanglemain.png',
  ];
  static List<String> titleList = [
    "김영아,23세 ",
    "손정호,28세",
    "신주아,23세",
    "김병진,23세 ",
    "송연아,23세",
    "송연아,23세",
    "송연아,23세",
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
  static List<String> language = [
    "영어",
    "한국어",
    "영어",
    "영어",
    "영어",
    "영어",
    "영어",
  ];
  static List<String> Level = [
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
    "images/level/crown-illust.png",
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

  int count = 5;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                // vertical: 20,
              ),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 15,
                      child: Image.asset(
                        animalImagePath[index],
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 20,
                      child: Text(
                        titleList[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 100,
                      top: 52,
                      child: Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                    ),
                    Positioned(
                      left: 120,
                      top: 52,
                      child: Text(
                        region[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 210,
                      top: 52,
                      child: Text(
                        language[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 197,
                      top: 53,
                      child: Image.asset(
                        "images/globe-light.png",
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      left: 290,
                      top: 20,
                      child: Container(
                        height: 40,
                        width: width / 9.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 207, 246, 242),
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: Image.asset(
                          "images/icon-chat-bubble-mono.png",
                        ),
                      ),
                    ),
                    //로그인여부 아이콘
                    Positioned(
                      top: 60,
                      left: 70,
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
                    //Level 배찌
                    Positioned(
                      top: 18,
                      left: 100,
                      child: Images(
                        image: Level[index],
                      ),
                    ),
                    Positioned(
                      top: 23,
                      left: 225,
                      child: Images(
                        image: gender[index],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: animalImagePath.length,
          //높이조절
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

//피그마 이미지들
class Images extends StatelessWidget {
  final String? image;
  const Images({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return image != null
        ? Image.asset(
            image!,
          )
        : const Text('');
  }
}
