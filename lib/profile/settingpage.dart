import 'package:flutter/material.dart';
import 'package:flutter_mituks/profile/womanprofile/coinsettingpage.dart';
import 'package:flutter_mituks/view/profilepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettingPage extends StatefulWidget {
  const ProfileSettingPage({super.key});

  @override
  State<ProfileSettingPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<ProfileSettingPage> {
  bool _manbox = false;
  bool _womanbox = false;

  String _man = '남';
  String _woman = '여';
  //남자박스
  void genderWoman() {
    // gender = _woman;
    if (!_manbox) {
      _womanbox = !_womanbox;
    }
    if (_manbox) {
      _manbox = !_manbox;
    }
    if (!_womanbox) {
      _womanbox = !_womanbox;
    }
  }

  //여자박스
  void genderman() {
    // gender = _man;
    if (!_womanbox) {
      _manbox = !_manbox;
    }
    if (_womanbox) {
      _womanbox = !_womanbox;
    }
    if (!_manbox) {
      _manbox = !_manbox;
    }
  }

  Color color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '내 프로필',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ProfilePage(),
              ),
            );
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: ScreenUtil().setWidth(
                16,
              ),
            ),
            child: Row(
              children: [
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
                    width: ScreenUtil().setWidth(
                      88,
                    ),
                    height: ScreenUtil().setHeight(
                      34,
                    ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "image/settingcoin.svg",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            4,
                          ),
                        ),
                        const Text(
                          '코인 설정',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(8),
            left: ScreenUtil().setWidth(
              20,
            ),
            right: ScreenUtil().setWidth(
              20,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "image/profileborder.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(80),
                      left: ScreenUtil().setWidth(
                        200,
                      ),
                    ),
                    child: Container(
                      width: ScreenUtil().setWidth(
                        40,
                      ),
                      height: ScreenUtil().setHeight(
                        40,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          100,
                        ),
                        color: const Color.fromARGB(
                          255,
                          245,
                          245,
                          245,
                        ),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DescriptionContainer(
                      title: "이름",
                      titledescription: "장미수",
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(
                      20,
                    )),
                    const DescriptionContainer(
                      title: "아이디",
                      titledescription: "chlwlsgur1",
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(
                      20,
                    )),
                    const DescriptionContainer(
                      title: "이메일",
                      titledescription: "chlwlsgur23@gmail.com",
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(
                      20,
                    )),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "성별",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(
                      8,
                    )),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _manbox = !_manbox;
                              genderman();
                              print(_manbox);
                            });
                          },
                          child: Container(
                            height: ScreenUtil().setHeight(
                              48,
                            ),
                            width: ScreenUtil().setWidth(
                              162,
                            ),
                            decoration: BoxDecoration(
                              border: _manbox
                                  ? Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        3,
                                        201,
                                        195,
                                      ),
                                    )
                                  : Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        229,
                                        229,
                                        229,
                                      ),
                                    ),
                              borderRadius: BorderRadius.circular(8),
                              color: _manbox
                                  ? const Color.fromARGB(
                                      255,
                                      230,
                                      250,
                                      249,
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                _man,
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    82,
                                    82,
                                    82,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            11,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _womanbox = !_womanbox;
                              genderWoman();
                              print(_womanbox);
                            });
                          },
                          child: Container(
                            height: ScreenUtil().setHeight(
                              48,
                            ),
                            width: ScreenUtil().setWidth(
                              162,
                            ),
                            child: Center(
                              child: Text(
                                _woman,
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    82,
                                    82,
                                    82,
                                  ),
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: _womanbox
                                  ? Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        3,
                                        201,
                                        195,
                                      ),
                                    )
                                  : Border.all(
                                      color: const Color.fromARGB(
                                        255,
                                        229,
                                        229,
                                        229,
                                      ),
                                    ),
                              borderRadius: BorderRadius.circular(8),
                              color: _womanbox
                                  ? const Color.fromARGB(
                                      255,
                                      230,
                                      250,
                                      249,
                                    )
                                  : null,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    const DescriptionContainer(
                      title: "생년월일",
                      titledescription: "19920-04-06",
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    const DescriptionContainer(
                      title: "위치",
                      titledescription: "서울시 강남구",
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Text(
                        '음성메세지',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        12,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          245,
                          245,
                          245,
                        ),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      height: ScreenUtil().setHeight(
                        116,
                      ),
                      width: ScreenUtil().setHeight(
                        335,
                      ),
                      child: Stack(
                        children: [
                          Container(
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
                            height: ScreenUtil().setHeight(
                              60,
                            ),
                            width: ScreenUtil().setHeight(
                              335,
                            ),
                          ),
                          Positioned(
                            left: ScreenUtil().setWidth(
                              20,
                            ),
                            top: ScreenUtil().setHeight(
                              10,
                            ),
                            child: SvgPicture.asset(
                              "image/mic.svg",
                            ),
                          ),
                          Positioned(
                            left: ScreenUtil().setWidth(
                              70,
                            ),
                            top: ScreenUtil().setHeight(
                              14,
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
                                  '8:00 ',
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
                          Positioned(
                            top: ScreenUtil().setHeight(72),
                            left: ScreenUtil().setWidth(
                              86,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    225,
                                    229,
                                    229,
                                    229,
                                  ),
                                ),
                                color: const Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                              ),
                              height: ScreenUtil().setHeight(
                                32,
                              ),
                              width: ScreenUtil().setHeight(
                                90,
                              ),
                              child: Center(
                                child: Text(
                                  '다시 녹음하기',
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
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: ScreenUtil().setHeight(
                              72,
                            ),
                            left: ScreenUtil().setWidth(
                              184,
                            ),
                            child: Container(
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
                              height: ScreenUtil().setHeight(
                                32,
                              ),
                              width: ScreenUtil().setHeight(
                                66,
                              ),
                              child: Center(
                                child: Text(
                                  '저장하기',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: ScreenUtil().setSp(
                                      12,
                                    ),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '직업',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(
                                16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: ScreenUtil().setWidth(
                                0,
                              ),
                            ),
                            child: Container(
                              height: ScreenUtil().setHeight(
                                32,
                              ),
                              width: ScreenUtil().setWidth(
                                120,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                                color: const Color.fromARGB(
                                  255,
                                  23,
                                  23,
                                  23,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "image/pen.svg",
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(
                                      5,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      '카테고리 변경하기',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Text(
                      '언어',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    Row(
                      children: [
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '한국어',
                          width: ScreenUtil().setWidth(
                            82,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                          image: "image/seetinglogo/koreaa.png",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '불어',
                          image: "image/seetinglogo/pari.png",
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '영어',
                          image: "image/seetinglogo/usa.png",
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    Text(
                      '관심사',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: ContainerWidgt(
                            color: const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                            title: '공부',
                            image: "image/seetinglogo/book.png",
                            width: ScreenUtil().setWidth(
                              70,
                            ),
                            hight: ScreenUtil().setHeight(
                              36,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '게임',
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                          image: "image/seetinglogo/game.png",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '운동',
                          image: "image/seetinglogo/dog.png",
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '음식',
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                          image: "image/seetinglogo/eumsic.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    Text(
                      '이상형',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    Row(
                      children: [
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '이상형',
                          width: ScreenUtil().setWidth(
                            65,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '이상형',
                          width: ScreenUtil().setWidth(
                            65,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '이상형',
                          width: ScreenUtil().setWidth(
                            65,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    Text(
                      '취미',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    Row(
                      children: [
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '골프',
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                          image: "image/seetinglogo/goo.png",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '축구',
                          image: "image/seetinglogo/soccer.png",
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '테니스',
                          image: "image/ballss.png",
                          width: ScreenUtil().setWidth(
                            82,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '산책',
                          image: "image/seetinglogo/run.png",
                          width: ScreenUtil().setWidth(
                            70,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    Text(
                      '성격',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    Row(
                      children: [
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '성격',
                          width: ScreenUtil().setWidth(
                            53,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '성격',
                          width: ScreenUtil().setWidth(
                            53,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        ContainerWidgt(
                          color: const Color.fromARGB(
                            255,
                            250,
                            250,
                            250,
                          ),
                          title: '성격',
                          width: ScreenUtil().setWidth(
                            53,
                          ),
                          hight: ScreenUtil().setHeight(
                            36,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerWidgt extends StatelessWidget {
  final String? image;
  final String title;
  final double width;
  final double? hight;
  final VoidCallback? onTap;
  final Color? color;
  final Border? decoration;

  const ContainerWidgt({
    super.key,
    required this.title,
    required this.width,
    this.image,
    this.onTap,
    this.color,
    this.decoration,
    this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: color,
            border: decoration),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //null 에러날떄
            image != null
                ? Image.asset(
                    image!,
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  )
                : const Text(''),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionContainer extends StatelessWidget {
  final String title;
  final String titledescription;

  const DescriptionContainer({
    super.key,
    required this.title,
    required this.titledescription,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
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
              335,
            ),
            height: ScreenUtil().setHeight(
              48,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                250,
                250,
                250,
              ),
              border: Border.all(
                color: const Color.fromARGB(
                  255,
                  229,
                  229,
                  229,
                ),
              ),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(
                  14,
                ),
                left: ScreenUtil().setWidth(
                  16,
                ),
              ),
              child: Text(
                titledescription,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(
                    14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
