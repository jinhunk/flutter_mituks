import 'dart:ui';


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/profile/settingpage.dart';
import 'package:flutter_mituks/profile/womanprofile/coinsettingpage.dart';
import 'package:flutter_mituks/profile/womanprofile/exchange/exchangepage.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

  int _current = 0;

  final List<String> imgList = [
    "images/person/klraa.png",
    "images/person/klraa.png",
    "images/person/klraa.png",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  } //애니메이션

  double value = 0.3;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      body: SingleChildScrollView(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    //이미지페이지 애니메이션
                    CarouselSlider.builder(
                      key: _sliderKey,
                      itemCount: imgList.length,
                      itemBuilder:
                          (BuildContext context, int index, int pageViewIndex) {
                        return Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                imgList[index],
                                fit: BoxFit.fill,
                                height: height / 2.5,
                                width: MediaQuery.of(context).size.width / 1.0,
                              ),
                              Positioned(
                                top: 70,
                                left: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const RootTab(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: width / 9.5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 70,
                                left: 270,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const ProfileSettingPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: width / 3.5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/pen.png",
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '프로필 설정',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index == 0)
                                Positioned(
                                  top: 240,
                                  left: 130,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "김유라, ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "23세",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Image.asset(
                                            "images/woman.png",
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_sharp,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          const Text(
                                            '13km',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            "images/globe-light.png",
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          const Text(
                                            '영어',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Image.asset(
                                            "images/coinsss.png",
                                          ),
                                          const Text(
                                            '11',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        viewportFraction: 1.0, // 화면비율
                        enableInfiniteScroll: true,
                        enlargeCenterPage: false, //페이지 넘어갈때 간격
                        autoPlay: true,
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        height: MediaQuery.of(context).size.height / 2.50,
                        onPageChanged: (index, int) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 190,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(
                          imgList,
                          (index, url) {
                            return Container(
                              width: 7.0,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.teal
                                    : Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //첫번째 컨테이너박스

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: width / 1.05,
                    height: 130,
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 15.0,
                          left: 20.0,
                          child: Text(
                            '브론즈',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          left: 80.0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                255,
                                243,
                                252,
                                252,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                color: const Color.fromARGB(
                                  255,
                                  230,
                                  250,
                                  249,
                                ),
                              ),
                            ),
                            width: width / 9.0,
                            height: height / 27.0,
                            child: const Center(
                              child: Text(
                                'Lv.1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 45.0,
                          left: 20.0,
                          child: Row(
                            children: [
                              const Text(
                                "현재코인",
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    115,
                                    115,
                                    115,
                                  ),
                                ),
                              ),
                              Image.asset(
                                "images/coinsss.png",
                              ),
                              const Text(
                                '600C',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 20.0,
                          top: 80.0,
                          child: Container(
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(15.0),
                                ),
                            width: width / 1.6,
                            child: const LinearProgressIndicator(
                              value: 0.3,
                              backgroundColor: Colors.grey,
                              color: Colors.black45,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color.fromARGB(
                                  255,
                                  3,
                                  201,
                                  195,
                                ),
                              ),
                              minHeight: 8.0,
                              semanticsLabel: 'semanticsLabel',
                              semanticsValue: 'semanticsValue',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.0,
                          top: 100.0,
                          child: Row(
                            children: [
                              const Text(
                                '브론즈(Lv.2)까지 400Coin 남음',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    82,
                                    82,
                                    82,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset(
                                "images/Vectortwo.png",
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 30.0,
                          left: 290.0,
                          child: Image.asset(
                            "images/level/crown-big.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              //두번쨰 컨테이너박스
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: width / 1.05,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            Image.asset("images/message-bubble.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '내 소개',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          '어제 강남으로 옮겼어요.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          '친구 사귀려고 앱 다운했어요! 저랑 채팅해요!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 240, 240),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          width: width / 1.18,
                          height: 55,
                          child: Center(
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 7.0,
                                  left: 10.0,
                                  child: Container(
                                    height: 40,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 67, 214, 200),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Image.asset(
                                      "images/media-play-solid.png",
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60.0,
                                  top: 10,
                                  child: Image.asset(
                                    "images/Frame_radio.png",
                                  ),
                                ),
                                const Positioned(
                                  left: 245,
                                  top: 18,
                                  child: Text(
                                    "0:00 / 0:10",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 70,
                                  left: 80,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '다시 녹음하기',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text(
                                            '저장하기',
                                          ),
                                        ),
                                        height: 35,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            54,
                                            203,
                                            188,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ],
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
              const SizedBox(
                height: 10.0,
              ),

              //두번쨰 컨테이너박스
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: width / 1.05,
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ExChangePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: width / 4.0,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                214,
                                247,
                                246,
                              ),
                            ),
                            color: const Color.fromARGB(
                              255,
                              243,
                              252,
                              252,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/coincoin.png",
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text(
                                '환전신청',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    2,
                                    161,
                                    156,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const CoinSettingPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: width / 4.0,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                214,
                                247,
                                246,
                              ),
                            ),
                            color: const Color.fromARGB(
                              255,
                              243,
                              252,
                              252,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/cointwo.png",
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text(
                                '코인설정',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    2,
                                    161,
                                    156,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: width / 4.0,
                        height: 90,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              214,
                              247,
                              246,
                            ),
                          ),
                          color: const Color.fromARGB(
                            255,
                            243,
                            252,
                            252,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/Vector.png",
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              '고객 서비스',
                              style: TextStyle(
                                color: Color.fromARGB(
                                  255,
                                  2,
                                  161,
                                  156,
                                ),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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

//컨테이너 박스 ( )
class PersonContainer extends StatelessWidget {
  final String title;
  final IconData? icon;
  final double width;
  final double height;

  const PersonContainer({
    super.key,
    required this.title,
    this.icon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 240, 240),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
