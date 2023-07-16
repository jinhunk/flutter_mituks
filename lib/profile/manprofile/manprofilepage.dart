import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/profile/manprofile/coinpage.dart';
import 'package:flutter_mituks/profile/manprofile/diamondpage.dart';
import 'package:flutter_mituks/profile/manprofile/mansettingpage.dart';


class ManProfilePage extends StatefulWidget {
  const ManProfilePage({super.key});

  @override
  State<ManProfilePage> createState() => _ManProfilePageState();
}

class _ManProfilePageState extends State<ManProfilePage> {
  GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

  int _current = 0;

  final List<String> imgList = [
    "images/gender/manperson.png",
    "images/gender/manperson.png",
    "images/gender/manperson.png",
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  } //애니메이션

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      body: SingleChildScrollView(
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
                      return Stack(
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
                              onTap: () {},
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
                                        const ManSettingPage(),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                        "Alex, ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "24세",
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
                                        "images/male.png",
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
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1.0, // 화면비율
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
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
                              color:
                                  _current == index ? Colors.teal : Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //첫번쨰 컨테이너박스
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width / 1.02,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/message-bubble.png",
                          ),
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
                          const SizedBox(
                            width: 150,
                          ),
                          Container(
                            width: width / 4.0,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              color: const Color.fromARGB(255, 246, 243, 243),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/bronze.png",
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "LV.1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Image.asset(
                                  "images/question-circle-solid.png",
                                ),
                              ],
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
                      height: 10,
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
                        child: const Center(
                          child: Text(
                            '음성녹음',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //두번쨰 컨테이너박스
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: width / 1.08,
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const CoinPage(),
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
                              3,
                              201,
                              195,
                            ),
                          ),
                          color: const Color.fromARGB(255, 243, 252, 252),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/bigcoin.png",
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              '코인구매',
                              style: TextStyle(
                                color: Colors.teal,
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
                                const DiamondPage(),
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
                              3,
                              201,
                              195,
                            ),
                          ),
                          color: const Color.fromARGB(255, 243, 252, 252),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/diamond.png",
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              '다이아몬드 구매',
                              style: TextStyle(
                                color: Colors.teal,
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
                            3,
                            201,
                            195,
                          ),
                        ),
                        color: const Color.fromARGB(255, 243, 252, 252),
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
                              color: Colors.teal,
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
