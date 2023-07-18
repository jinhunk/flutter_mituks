import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/chattingpage/view/detailchatting.dart';
import 'package:flutter_mituks/chattingpage/view/detailgift.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
    'image/img.png',
    'image/img.png',
    'image/img.png',
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
              width: ScreenUtil().setWidth(
                375,
              ),
              height: ScreenUtil().setHeight(
                300,
              ),
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
                            width: ScreenUtil().setWidth(
                              375,
                            ),
                            height: ScreenUtil().setHeight(
                              300,
                            ),
                          ),

                          if (index == 0)
                            Positioned(
                              top: ScreenUtil().setHeight(
                                200,
                              ),
                              left: ScreenUtil().setWidth(
                                110,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "김영아, ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: ScreenUtil().setSp(
                                            24,
                                          ),
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
                                      SizedBox(
                                        width: ScreenUtil().setWidth(
                                          6,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        "image/gender/femalebig.svg",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setWidth(
                                      6,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(
                                        10,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "image/mapgray.svg",
                                        ),
                                        SizedBox(
                                          width: ScreenUtil().setWidth(
                                            2,
                                          ),
                                        ),
                                        Text(
                                          '13km',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(
                                              12,
                                            ),
                                            color: const Color.fromARGB(
                                              255,
                                              229,
                                              229,
                                              229,
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
                                          color: Colors.white,
                                        ),
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
                                            '영어',
                                            style: TextStyle(
                                              fontSize: ScreenUtil().setSp(
                                                12,
                                              ),
                                              color: const Color.fromARGB(
                                                255,
                                                229,
                                                229,
                                                229,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: ScreenUtil().setWidth(
                                            6,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "image/smallcoin.svg",
                                        ),
                                        SizedBox(
                                          width: ScreenUtil().setWidth(
                                            2,
                                          ),
                                        ),
                                        const Text(
                                          '200',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              229,
                                              229,
                                              229,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          //뒤로가기아이콘
                          Positioned(
                            top: ScreenUtil().setHeight(
                              55,
                            ),
                            left: ScreenUtil().setWidth(
                              14,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                "image/profileback.svg",
                              ),
                            ),
                          ),
                          //프로필설정컨테이너
                          Positioned(
                            top: ScreenUtil().setHeight(
                              60,
                            ),
                            left: ScreenUtil().setWidth(
                              259,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const DetailGiftPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: ScreenUtil().setWidth(
                                  100,
                                ),
                                height: ScreenUtil().setHeight(
                                  34,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(
                                    0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        "image/gift.svg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        4,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: ScreenUtil().setHeight(
                                          10,
                                        ),
                                      ),
                                      child: const Text(
                                        '선물 보내기',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1.0, // 화면비율
                      enableInfiniteScroll: true,
                      enlargeCenterPage: false,
                      autoPlay: false,
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
                    top: ScreenUtil().setHeight(
                      265,
                    ),
                    left: ScreenUtil().setWidth(
                      175,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(
                        imgList,
                        (index, url) {
                          return Container(
                            width: ScreenUtil().setWidth(
                              6,
                            ),
                            height: ScreenUtil().setHeight(
                              6,
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(
                                2,
                              ),
                            ),
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
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(
                  8,
                ),
                top: ScreenUtil().setHeight(
                  12,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                width: ScreenUtil().setWidth(
                  359,
                ),
                height: ScreenUtil().setHeight(
                  176,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(
                      12,
                    ),
                    left: ScreenUtil().setWidth(
                      20,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "image/messageteal.svg",
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '내 소개',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(
                                16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(
                          8,
                        ),
                      ),
                      Text(
                        '어제 강남으로 옮겼어요.',
                        style: TextStyle(
                          color: const Color.fromARGB(
                            255,
                            64,
                            64,
                            64,
                          ),
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '친구 사귀려고 앱 다운했어요! 저랑 채팅해요!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            64,
                            64,
                            64,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(
                          14,
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(
                          60,
                        ),
                        width: ScreenUtil().setHeight(
                          335,
                        ),
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
                        child: Stack(
                          children: [
                            Positioned(
                              top: ScreenUtil().setHeight(
                                10,
                              ),
                              left: ScreenUtil().setWidth(
                                12,
                              ),
                              child: SvgPicture.asset(
                                "image/iconbuttonsmall.svg",
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(
                                10,
                              ),
                            ),
                            Positioned(
                              top: ScreenUtil().setHeight(
                                14,
                              ),
                              left: ScreenUtil().setWidth(
                                62,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                8,
              ),
            ),
            //두번쨰 컨테이너박스
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                width: ScreenUtil().setWidth(
                  359,
                ),
                height: ScreenUtil().setHeight(
                  190,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(
                          19,
                        ),
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "image/smile.svg",
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              4,
                            ),
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
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          PersonContainer(
                            image: "image/Interest/camara.png",
                            title: '',
                            width: ScreenUtil().setWidth(
                              94,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            image: "image/language/korea.png",
                            title: '',
                            width: ScreenUtil().setWidth(
                              82,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            image: "image/Interest/momo.png",
                            title: '',
                            width: ScreenUtil().setWidth(
                              94,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        8,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        8,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '성격',
                            width: ScreenUtil().setWidth(
                              53,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: ScreenUtil().setHeight(
                8,
              ),
            ),
            Center(
              child: Container(
                width: ScreenUtil().setWidth(
                  359,
                ),
                height: ScreenUtil().setHeight(
                  96,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "image/love.svg",
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              4,
                            ),
                          ),
                          Text(
                            '이런 사람을 찾고 있어요',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(
                                16,
                              ),
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(
                          20,
                        ),
                      ),
                      child: Row(
                        children: [
                          PersonContainer(
                            title: '이상형',
                            width: ScreenUtil().setWidth(
                              65,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(
                              8,
                            ),
                          ),
                          PersonContainer(
                            title: '이상형',
                            width: ScreenUtil().setWidth(
                              65,
                            ),
                            height: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                38,
              ),
            ),
            Container(
              color: Colors.white,
              width: ScreenUtil().setWidth(
                375,
              ),
              height: ScreenUtil().setHeight(
                106,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
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
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      56,
                    ),
                    child: Center(
                      child: Text(
                        '채팅하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            16,
                          ),
                        ),
                      ),
                    ),
                  ),
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
  final String? image;
  final double width;
  final double height;

  const PersonContainer({
    super.key,
    required this.title,
    this.image,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image != null
              ? Image.asset(
                  image!,
                )
              : Text(''),
          Text(
            title,
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
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
