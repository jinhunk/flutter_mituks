import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/chattingpage/view/detailchatting.dart';


class DetailProfilePage extends StatefulWidget {
  const DetailProfilePage({super.key});

  @override
  State<DetailProfilePage> createState() => _DetailProfilePageState();
}

class _DetailProfilePageState extends State<DetailProfilePage> {
  GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();
  @override
  int _current = 0;

  final List<String> imgList = [
    'images/img.png',
    'images/person/klraa.png',
    'images/img.png',
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
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width / 1.0,
              height: height / 2.5,
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [
              //       const Color.fromARGB(255, 24, 123, 113),
              //       Colors.black.withOpacity(0.8),
              //     ],
              //     begin: Alignment.center,
              //     end: Alignment.bottomCenter,
              //   ),
              // ),
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
                            ClipRRect(
                              // borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                imgList[index],
                                fit: BoxFit.fill,
                                height: height / 2.5,
                                width: MediaQuery.of(context).size.width / 1.0,
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
                                    const SizedBox(
                                      height: 5.0,
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
                                          '200',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            //뒤로가기아이콘
                            Positioned(
                              top: 70,
                              left: 20,
                              child: Container(
                                width: width / 9.5,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(
                                    0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
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
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            //프로필설정컨테이너
                            Positioned(
                              top: 70,
                              left: 270,
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
                                      "images/giftwitht.png",
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      '선물 보내기',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1.0, // 화면비율
                      enableInfiniteScroll: true,
                      enlargeCenterPage: false,
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
                                  ? const Color.fromARGB(255, 3, 201, 195)
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
                      padding: EdgeInsets.only(left: 15.0),
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
                        child: Center(
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
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/smile.png",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '저는 이런 사람이에요',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '사진찍기',
                            width: width / 4.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '힌국어',
                            width: width / 4.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '영화감상',
                            width: width / 4.5,
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          PersonContainer(
                            title: '성격',
                            width: width / 6.5,
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: width / 1.08,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Image.asset("images/heart.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '이런 사람을 찾고 있어요',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '이상형',
                            width: width / 5.5,
                            height: 35,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          PersonContainer(
                            title: '이상형',
                            width: width / 5.5,
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white,
              width: width / 1.0,
              height: 100,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => DatailChattingPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        3,
                        201,
                        195,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: width / 1.08,
                    height: 70,
                    child: const Center(
                      child: Text(
                        '채팅하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
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
