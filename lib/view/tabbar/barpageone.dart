import 'package:flutter/material.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BarPageOne extends StatefulWidget {
  const BarPageOne({super.key});

  @override
  State<BarPageOne> createState() => _BarPageOneState();
}

class _BarPageOneState extends State<BarPageOne> {
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
    "image/level/bronz.svg",
    "image/level/silver.svg",
    "image/level/silver.svg",
    "image/level/emerald.svg",
    "image/level/gold.svg",
    "image/level/gold.svg",
    "image/level/gold.svg",
  ];

  static List<String> gender = [
    "image/gender/woman.svg",
    "image/gender/male.svg",
    "image/gender/woman.svg",
    "image/gender/male.svg",
    "image/gender/woman.svg",
    "image/gender/woman.svg",
    "image/gender/woman.svg",
  ];

  int count = 5;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        left: ScreenUtil().setWidth(
          20,
        ),
        top: ScreenUtil().setHeight(
          8,
        ),
        right: ScreenUtil().setWidth(
          20,
        ),
      ),
      child: Container(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  // horizontal: 20,
                  // vertical: 20,
                  ),
              child: Container(
                height: ScreenUtil().setHeight(
                  96,
                ),
                width: ScreenUtil().setWidth(
                  335,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(
                    255,
                    255,
                    255,
                    255,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: ScreenUtil().setWidth(
                        16,
                      ),
                      top: ScreenUtil().setHeight(
                        16,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const DetailProfilePage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          animalImagePath[index],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        2,
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        122,
                      ),
                      top: ScreenUtil().setHeight(
                        26,
                      ),
                      child: Text(
                        titleList[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(
                            16,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        96,
                      ),
                      top: ScreenUtil().setHeight(
                        57,
                      ),
                      child: SvgPicture.asset(
                        "image/map.svg",
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        110,
                      ),
                      top: ScreenUtil().setHeight(
                        55,
                      ),
                      child: Text(
                        region[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(
                            12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        196,
                      ),
                      top: ScreenUtil().setHeight(
                        56,
                      ),
                      child: Text(
                        language[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(
                            12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        182,
                      ),
                      top: ScreenUtil().setHeight(
                        57,
                      ),
                      child: SvgPicture.asset(
                        "image/globe-light.svg",
                        color: const Color.fromARGB(
                          255,
                          82,
                          82,
                          82,
                        ),
                      ),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(
                        287,
                      ),
                      top: ScreenUtil().setHeight(
                        32,
                      ),
                      child: SvgPicture.asset(
                        "image/message.svg",
                      ),
                    ),
                    //로그인여부 아이콘
                    Positioned(
                      top: ScreenUtil().setHeight(
                        62,
                      ),
                      left: ScreenUtil().setWidth(
                        61,
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    if (index == 1)
                      Positioned(
                        top: ScreenUtil().setHeight(
                          62,
                        ),
                        left: ScreenUtil().setWidth(
                          61,
                        ),
                        child: Container(
                          width: ScreenUtil().setWidth(
                            14,
                          ),
                          height: ScreenUtil().setHeight(
                            14,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(
                              255,
                              212,
                              212,
                              212,
                            ),
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

                    //Level 배찌
                    Positioned(
                      left: ScreenUtil().setWidth(
                        96,
                      ),
                      top: ScreenUtil().setHeight(
                        25,
                      ),
                      child: Images(
                        image: Level[index],
                      ),
                    ),
                    Positioned(
                      top: ScreenUtil().setHeight(
                        27,
                      ),
                      left: ScreenUtil().setWidth(
                        214,
                      ),
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
            return SizedBox(
              height: ScreenUtil().setHeight(
                12,
              ),
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
        ? SvgPicture.asset(
            image!,
          )
        : const Text('');
  }
}
