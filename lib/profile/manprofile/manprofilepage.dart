import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/profile/manprofile/coinpage.dart';
import 'package:flutter_mituks/profile/manprofile/diamondpage.dart';
import 'package:flutter_mituks/profile/settingpage.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ManProfilePage extends StatefulWidget {
  const ManProfilePage({super.key});

  @override
  State<ManProfilePage> createState() => _ManProfilePageState();
}

class _ManProfilePageState extends State<ManProfilePage> {
  GlobalKey<CarouselSliderState> _sliderKey = GlobalKey();

  int _current = 0;

  final List<String> imgList = [
    "image/manprofilealex.png",
    "image/manprofilealex.png",
    "image/manprofilealex.png",
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
      backgroundColor: const Color.fromARGB(
        255,
        235,
        234,
        234,
      ),
      body: SingleChildScrollView(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
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
                                height: ScreenUtil().setHeight(
                                  300,
                                ),
                                width: ScreenUtil().setWidth(
                                  375,
                                ),
                              ),
                              Positioned(
                                top: ScreenUtil().setHeight(
                                  55,
                                ),
                                left: ScreenUtil().setWidth(
                                  14,
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
                                  child: SvgPicture.asset(
                                    "image/profileback.svg",
                                  ),
                                ),
                              ),
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
                                            const ProfileSettingPage(),
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
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "image/profilepen.svg",
                                        ),
                                        SizedBox(
                                          width: ScreenUtil().setWidth(
                                            4,
                                          ),
                                        ),
                                        Text(
                                          '프로필 설정',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: ScreenUtil().setSp(
                                              13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index == 0)
                                Positioned(
                                  top: ScreenUtil().setHeight(
                                    210,
                                  ),
                                  left: ScreenUtil().setWidth(
                                    110,
                                  ),
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
                                          SizedBox(
                                            width: ScreenUtil().setWidth(
                                              6,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            "image/malebig.svg",
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: ScreenUtil().setHeight(
                                          6,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "image/mapgray.svg",
                                          ),
                                          SizedBox(
                                            width: ScreenUtil().setWidth(
                                              2,
                                            ),
                                          ),
                                          const Text(
                                            '13km',
                                            style: TextStyle(
                                              color: Colors.white,
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
                                          const Text(
                                            '영어',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                            "image/smallcoin.svg",
                                          ),
                                          const SizedBox(
                                            width: 2,
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
                        autoPlay: false,
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        height: ScreenUtil().setHeight(
                          300,
                        ),
                        onPageChanged: (index, int) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      top: ScreenUtil().setHeight(
                        275,
                      ),
                      left: 182,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(
                          imgList,
                          (index, url) {
                            return Container(
                              width: ScreenUtil().setWidth(6),
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
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: ScreenUtil().setWidth(
                      359,
                    ),
                    height: ScreenUtil().setHeight(
                      114,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: ScreenUtil().setHeight(
                            19.5,
                          ),
                          left: ScreenUtil().setWidth(
                            20,
                          ),
                          child: Text(
                            '브론즈',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(
                                18,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: ScreenUtil().setHeight(
                            18,
                          ),
                          left: ScreenUtil().setWidth(
                            73,
                          ),
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
                            width: ScreenUtil().setWidth(
                              37,
                            ),
                            height: ScreenUtil().setHeight(
                              20,
                            ),
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
                          top: ScreenUtil().setHeight(
                            44,
                          ),
                          left: ScreenUtil().setWidth(
                            20,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "현재코인",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    11,
                                  ),
                                  color: const Color.fromARGB(
                                    255,
                                    115,
                                    115,
                                    115,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  2,
                                ),
                              ),
                              SvgPicture.asset(
                                "image/smallsmailcoin.svg",
                              ),
                              Text(
                                '600C',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: ScreenUtil().setWidth(
                            20,
                          ),
                          top: ScreenUtil().setHeight(
                            68,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            width: ScreenUtil().setWidth(
                              225,
                            ),
                            height: ScreenUtil().setHeight(
                              6,
                            ),
                            child: const LinearProgressIndicator(
                              value: 0.3,
                              backgroundColor: Color.fromARGB(
                                255,
                                229,
                                229,
                                229,
                              ),
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
                          left: ScreenUtil().setWidth(
                            20,
                          ),
                          top: ScreenUtil().setHeight(
                            78,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '브론즈(Lv.2)까지 400Coin 남음',
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    82,
                                    82,
                                    82,
                                  ),
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenUtil().setSp(
                                    11,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: ScreenUtil().setHeight(79),
                                left: ScreenUtil().setWidth(
                                  168,
                                ),
                                child: SvgPicture.asset(
                                  "image/questioncirclesolid.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: ScreenUtil().setHeight(
                            31,
                          ),
                          left: ScreenUtil().setWidth(
                            276,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20.0,
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    width: ScreenUtil().setWidth(
                                      375,
                                    ),
                                    height: ScreenUtil().setHeight(
                                      360,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: ScreenUtil().setHeight(
                                            50,
                                          ),
                                          left: ScreenUtil().setWidth(
                                            147,
                                          ),
                                          child: SvgPicture.asset(
                                            "image/level/crown-goldbig.svg",
                                          ),
                                        ),
                                        SizedBox(
                                          height: ScreenUtil().setHeight(
                                            22,
                                          ),
                                        ),
                                        Positioned(
                                          left: ScreenUtil().setWidth(
                                            73,
                                          ),
                                          top: ScreenUtil().setHeight(
                                            140,
                                          ),
                                          child: Text(
                                            '골드 레벨 업! 20다이아 획득',
                                            style: TextStyle(
                                              fontSize: ScreenUtil().setSp(
                                                20,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: ScreenUtil().setWidth(
                                            64,
                                          ),
                                          top: ScreenUtil().setHeight(
                                            174,
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Alex님,Lv.20으로 레벨업 되셨어요.',
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
                                                ),
                                              ),
                                              Text(
                                                '레벨이 올라가면 다이아몬드를 선물로 드려요.',
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
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          left: ScreenUtil().setWidth(
                                            20,
                                          ),
                                          top: ScreenUtil().setHeight(
                                            270,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              width: ScreenUtil().setWidth(
                                                335,
                                              ),
                                              height: ScreenUtil().setHeight(
                                                56,
                                              ),
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                  255,
                                                  3,
                                                  201,
                                                  195,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  16,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '확인',
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(
                                                      255,
                                                      255,
                                                      255,
                                                      255,
                                                    ),
                                                    fontSize:
                                                        ScreenUtil().setSp(
                                                      16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: SvgPicture.asset(
                              "image/level/bigbronz.svg",
                            ),
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
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(
                    8,
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
                            16,
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(
                            60,
                          ),
                          width: ScreenUtil().setHeight(
                            319,
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

              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(
                    8,
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
                    130,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(
                        20,
                      ),
                      top: ScreenUtil().setHeight(
                        16,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => CoinPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: ScreenUtil().setWidth(
                              98,
                            ),
                            height: ScreenUtil().setHeight(
                              98,
                            ),
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
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "image/bigww.svg",
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(
                                    6,
                                  ),
                                ),
                                const Text(
                                  '코인구매',
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
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            12,
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
                            width: ScreenUtil().setWidth(
                              98,
                            ),
                            height: ScreenUtil().setHeight(
                              98,
                            ),
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
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "image/coins.svg",
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(
                                    6,
                                  ),
                                ),
                                const Text(
                                  '다이아몬드 구매',
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
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            12,
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(
                            98,
                          ),
                          height: ScreenUtil().setHeight(
                            98,
                          ),
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
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "image/sevese.svg",
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(
                                  6,
                                ),
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
