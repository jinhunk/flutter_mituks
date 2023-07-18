import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mituks/auth/phoneprofilethree.dart';
import 'package:flutter_mituks/texttest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PhoneProfileTwo extends StatefulWidget {
  const PhoneProfileTwo({super.key});

  @override
  State<PhoneProfileTwo> createState() => _PhoneProfileTwoState();
}

class _PhoneProfileTwoState extends State<PhoneProfileTwo> {
  bool interest = false;
  bool interestone = false;
  bool interesttwo = false;
  bool interestthree = false;
  bool interestfour = false;
  bool interestfive = false;

  bool languageone = false;
  bool languagetwo = false;
  bool languagethree = false;
  bool languagefour = false;
  bool languagefive = false;

  bool idealtype = false;
  bool idealtypeone = false;
  bool idealtypetwo = false;
  bool idealtypethree = false;
  bool idealtypefour = false;
  bool idealtypefive = false;
  bool idealtypesix = false;

  bool job = false;
  bool jobtwo = false;
  bool jobthree = false;
  bool jobfour = false;
  bool jobfive = false;
  bool jobsix = false;
  bool jobseven = false;
  bool jobeee = false;
  bool jobnine = false;

  bool hobbyone = false;
  bool hobbytwo = false;
  bool hobbythree = false;
  bool hobbyfour = false;
  bool hobbyfive = false;
  bool hobbysix = false;
  bool hobbyseven = false;
  bool hobbyeee = false;
  bool hobbynineeee = false;

  bool personality = false;
  bool personalityone = false;
  bool personalitytwo = false;
  bool personalitythree = false;
  bool personalityfour = false;
  bool personalityfive = false;
  bool personalitysix = false;
  bool personalityseven = false;
  bool personalityaee = false;

  int _counter = 0;

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }

  //필터적용하기버튼 마이너스
  void _subtractCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          // 로딩바
          child: Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(
                8,
              ),
              left: ScreenUtil().setWidth(
                20,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      4,
                    ),
                    child: const LinearProgressIndicator(
                      value: 0.65,
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
                      minHeight: 5.0,
                      semanticsLabel: 'semanticsLabel',
                      semanticsValue: 'semanticsValue',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(6),
                    right: ScreenUtil().setWidth(
                      20,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '2/3',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(
                              12,
                            ),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Text(
                  '당신에 대해 알려주세요!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setWidth(
                      20,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    2,
                  ),
                ),
                Text(
                  '비슷한 성향의 사람과 매칭 될 수 있는 확률이 높아져요!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(
                      14,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    24,
                  ),
                ),
                Text(
                  '관심사',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    2,
                  ),
                ),
                const Text(
                  '5개까지 선택할 수 있어요.',
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (interest = !interest) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interest);
                      },
                      color: interest
                          ? const Color.fromARGB(
                              255,
                              230,
                              250,
                              249,
                            )
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interest
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      image: 'image/seetinglogo/camara.png',
                      title: '사진찍기',
                      width: ScreenUtil().setWidth(
                        94,
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
                      onTap: () {
                        if (interestone = !interestone) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interestone);
                      },
                      color: interestone
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interestone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '여행',
                      image: "image/seetinglogo/plaseddd.png",
                      width: ScreenUtil().setWidth(
                        94,
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
                      onTap: () {
                        if (interesttwo = !interesttwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interesttwo);
                      },
                      title: '영화감상',
                      image: "image/seetinglogo/movic.png",
                      width: ScreenUtil().setWidth(
                        94,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interesttwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interesttwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (interestthree = !interestthree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interestthree);
                      },
                      color: interestthree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interestthree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '영화감상',
                      image: "image/seetinglogo/chack.png",
                      width: ScreenUtil().setWidth(
                        94,
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
                      onTap: () {
                        if (interestfour = !interestfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interestfour);
                      },
                      title: '문화생활',
                      image: "image/seetinglogo/runrun.png",
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interestfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interestfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 237, 245, 245),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (interestfive = !interestfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(interestfive);
                      },
                      color: interestfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: interestfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      image: "image/seetinglogo/movic.png",
                      title: '영화감상',
                      width: ScreenUtil().setWidth(
                        94,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    24,
                  ),
                ),
                Text(
                  '언어',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(2),
                ),
                Text(
                  '5개까지 선택할 수 있어요.',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (languageone = !languageone) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(languageone);
                      },
                      color: languageone
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: languageone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (languagetwo = !languagetwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(languagetwo);
                      },
                      color: languagetwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: languagetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '일본어',
                      width: ScreenUtil().setWidth(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      image: "image/seetinglogo/japan.png",
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (languagethree = !languagethree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(languagethree);
                      },
                      color: languagethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: languagethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '영어',
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      image: "image/seetinglogo/usa.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (languagefour = !languagefour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(languagefour);
                      },
                      color: languagefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: languagefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '불어',
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      image: "image/seetinglogo/pari.png",
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (languagefive = !languagefive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(languagefive);
                      },
                      color: languagefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: languagefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      width: ScreenUtil().setWidth(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      title: '중국어',
                      image: "image/seetinglogo/chain.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    24,
                  ),
                ),
                Text(
                  '이상형',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    2,
                  ),
                ),
                Text(
                  '5개까지 선택할 수 있어요.',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (idealtype = !idealtype) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtype);
                      },
                      color: idealtype
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtype
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      width: ScreenUtil().setWidth(
                        65,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      title: '이상형',
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (idealtypetwo = !idealtypetwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypetwo);
                      },
                      color: idealtypetwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      width: ScreenUtil().setWidth(
                        65,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      title: '이상형',
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (idealtypethree = !idealtypethree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypethree);
                      },
                      color: idealtypethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (idealtypefour = !idealtypefour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypefour);
                      },
                      color: idealtypefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (idealtypefive = !idealtypefive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypefive);
                      },
                      color: idealtypefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (idealtypesix = !idealtypesix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypesix);
                      },
                      color: idealtypesix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypesix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (idealtypeone = !idealtypeone) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(idealtypeone);
                      },
                      color: idealtypeone
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: idealtypeone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                    24,
                  ),
                ),
                Text(
                  '직업',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    2,
                  ),
                ),
                Text(
                  '1개까지 선택할 수 있어요 (중복선택 불가능)',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (job = !job) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(job);
                      },
                      color: job
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: job
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobtwo = !jobtwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobtwo);
                      },
                      color: jobtwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobtwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobthree = !jobthree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobthree);
                      },
                      color: jobthree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobthree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobfour = !jobfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobfour);
                      },
                      color: jobfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobeee = !jobeee) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobeee);
                      },
                      color: jobeee
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobeee
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (jobfive = !jobfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobfive);
                      },
                      color: jobfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobsix = !jobsix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobsix);
                      },
                      color: jobsix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobsix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
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
                      onTap: () {
                        if (jobseven = !jobseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobseven);
                      },
                      color: jobseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (jobnine = !jobnine) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(jobnine);
                      },
                      color: jobnine
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: jobnine
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '직업',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    24,
                  ),
                ),
                Text(
                  '취미',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '5개까지 선택할 수 있어요.',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyone = !hobbyone) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyone);
                      },
                      color: hobbyone
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                      onTap: () {
                        if (hobbytwo = !hobbytwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbytwo);
                      },
                      color: hobbytwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbytwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      title: '취미',
                    ),
                    SizedBox(
                        width: ScreenUtil().setWidth(
                      8,
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbythree = !hobbythree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbythree);
                      },
                      color: hobbythree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbythree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyfour = !hobbyfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyfour);
                      },
                      color: hobbyfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyeee = !hobbyeee) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyeee);
                      },
                      color: hobbyeee
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyeee
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyfive = !hobbyfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyfive);
                      },
                      color: hobbyfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbysix = !hobbysix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbysix);
                      },
                      color: hobbysix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbysix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyseven = !hobbyseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyseven);
                      },
                      color: hobbyseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
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
                    )),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyseven = !hobbyseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(hobbyseven);
                      },
                      color: hobbyseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: hobbyseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '취미',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    24,
                  ),
                ),
                Text(
                  '성격',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(
                      16,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    2,
                  ),
                ),
                Text(
                  '1개까지 선택할 수 있어요.',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      14,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    12,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (personality = !personality) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personality);
                      },
                      color: personality
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personality
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (personalityone = !personalityone) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalityone);
                      },
                      color: personalityone
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalityone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (personalitytwo = !personalitytwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalitytwo);
                      },
                      color: personalitytwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalitytwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (personalitythree = !personalitythree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalitythree);
                      },
                      color: personalitythree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalitythree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
                      ),
                      title: '성격',
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (personalityseven = !personalityseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalityseven);
                      },
                      color: personalityseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalityseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (personalityfour = !personalityfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalityfour);
                      },
                      color: personalityfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalityfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (personalityfive = !personalityfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalityfive);
                      },
                      color: personalityfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalityfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                      onTap: () {
                        if (personalitysix = !personalitysix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                        print(personalitysix);
                      },
                      color: personalitysix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      border: Border.all(
                        color: personalitysix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 245, 245, 245),
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
                ),
                SizedBox(
                    height: ScreenUtil().setHeight(
                  40,
                )),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement<void, void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) => const PhoneAuthTwo(),
                    //   ),
                    // );
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PhoneProfileThree(),
                        ),
                      );
                    },
                    child: Container(
                      width: ScreenUtil().setHeight(
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
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '다음',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//컨테이너박스
class ContainerWidgt extends StatelessWidget {
  final String? image;
  final String title;
  final double width;
  final double? hight;
  final VoidCallback? onTap;
  final Color? color;
  final Border? border;
  const ContainerWidgt({
    super.key,
    required this.title,
    required this.width,
    this.image,
    this.onTap,
    this.color,
    this.border,
    this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: hight,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              100,
            ),
            color: color,
            border: border,
          ),
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
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
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
