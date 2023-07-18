import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../loginpage.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //필터적용하기버튼 플러스
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

  int _counter = 0;
//나이별
  bool age = false;
  bool agetwo = false;
  bool agethree = false;
  bool agefour = false;
  bool agefive = false;

//언어
  bool language = false;
  bool languagetwo = false;
  bool languagethree = false;
  bool languagefour = false;
  bool languagefive = false;
  bool languagesix = false;
  bool languageseven = false;

//관심사
  bool interest = false;
  bool interestone = false;
  bool interesttwo = false;
  bool interestthree = false;
  bool interestfour = false;
  bool interestfive = false;
  bool interessix = false;
  bool interesseven = false;

//직업
  bool job = false;
  bool jobtwo = false;
  bool jobthree = false;
  bool jobfour = false;
  bool jobfive = false;
  bool jobsix = false;
  bool jobseven = false;
  bool jobeee = false;
  bool jobnine = false;
//취미
  bool hobbyone = false;
  bool hobbytwo = false;
  bool hobbythree = false;
  bool hobbyfour = false;
  bool hobbyfive = false;
  bool hobbysix = false;
  bool hobbyseven = false;
  bool hobbyeee = false;
  bool hobbynineeee = false;

//성격
  bool personality = false;
  bool personalityone = false;
  bool personalitytwo = false;
  bool personalitythree = false;
  bool personalityfour = false;
  bool personalityfive = false;
  bool personalitysix = false;
  bool personalityseven = false;
  bool personalityaee = false;

  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const RootTab(),
              ),
            );
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          '필터',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: ScreenUtil().setSp(
                18,
              )),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          // 로딩바
          child: Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(
                20,
              ),
              top: ScreenUtil().setHeight(
                16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '나이별',
                  style: TextStyle(
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
                      onTap: () {
                        setState(() {
                          if (age = !age) {
                            _addCounter();
                          } else {
                            _subtractCounter();
                          }
                          print(age);
                        });
                      },
                      color: age
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
                      title: '20~22세',
                      width: ScreenUtil().setHeight(
                        103,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      decoration: Border.all(
                        color: age
                            ? const Color.fromARGB(
                                255,
                                3,
                                201,
                                195,
                              )
                            : const Color.fromARGB(
                                255,
                                245,
                                245,
                                245,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        setState(() {
                          if (agetwo = !agetwo) {
                            _addCounter();
                          } else {
                            _subtractCounter();
                          }
                          print(age);
                        });
                      },
                      color: agetwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      title: '23~26세',
                      width: ScreenUtil().setHeight(
                        103,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      decoration: Border.all(
                        color: agetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                245,
                                245,
                                245,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        setState(() {
                          if (agethree = !agethree) {
                            _addCounter();
                          } else {
                            _subtractCounter();
                          }
                          print(age);
                        });
                      },
                      title: '27~29세',
                      width: ScreenUtil().setHeight(
                        103,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: agethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                245,
                                245,
                                245,
                              ),
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
                        setState(() {
                          if (agefour = !agefour) {
                            _addCounter();
                          } else {
                            _subtractCounter();
                          }
                          print(agefour);
                        });
                      },
                      title: '30대',
                      width: ScreenUtil().setHeight(
                        103,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: agefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        setState(() {
                          if (agefive = !agefive) {
                            _addCounter();
                          } else {
                            _subtractCounter();
                          }
                          print(agefive);
                        });
                      },
                      title: '40대',
                      width: ScreenUtil().setHeight(
                        103,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: agefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                245,
                                245,
                                245,
                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    26,
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
                  height: ScreenUtil().setHeight(
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      onTap: () {
                        if (language = !language) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      title: '한국어',
                      width: ScreenUtil().setHeight(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: language
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: language
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
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
                      },
                      title: '일본어',
                      width: ScreenUtil().setHeight(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: languagetwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(
                              255,
                              250,
                              250,
                              250,
                            ),
                      decoration: Border.all(
                        color: languagetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
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
                      },
                      title: '영어',
                      width: ScreenUtil().setHeight(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: languagethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
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
                      },
                      title: '불어',
                      width: ScreenUtil().setHeight(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: languagefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
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
                      },
                      title: '중국어',
                      width: ScreenUtil().setHeight(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: languagefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
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
                    10,
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
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interest
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interest
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '공부',
                      image: "image/seetinglogo/book.png",
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
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interesttwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interesttwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '게임',
                      image: "image/seetinglogo/game.png",
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (interestthree = !interestthree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interestthree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interestthree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: "동물",
                      image: "image/seetinglogo/dog.png",
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
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interestfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interestfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '음식',
                      image: "image/seetinglogo/eumsic.png",
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
                        if (interestfive = !interestfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        97,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interestfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interestfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '문화생활',
                      image: "image/seetinglogo/chack.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (interessix = !interessix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        94,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interessix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interessix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/seetinglogo/heart.png",
                      title: '운동',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (interesseven = !interesseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        94,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: interesseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: interesseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '해외여행',
                      image: "image/seetinglogo/plaseddd.png",
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
                    10,
                  ),
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '학생',
                      onTap: () {
                        if (job = !job) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: job
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: job
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      title: '모델',
                      onTap: () {
                        if (jobtwo = !jobtwo) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobtwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobtwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
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
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobthree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobthree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '선생님',
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      title: '사업가',
                      onTap: () {
                        if (jobfour = !jobfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobfour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      title: '승무원',
                      onTap: () {
                        if (jobfive = !jobfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobfive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
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
                      title: '취미',
                      onTap: () {
                        if (jobsix = !jobsix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobsix
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobsix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      title: '취미',
                      onTap: () {
                        if (jobseven = !jobseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobseven
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: jobseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      title: '취미',
                      onTap: () {
                        if (jobeee = !jobeee) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setHeight(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: jobeee
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
                      decoration: Border.all(
                        color: jobeee
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
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
                SizedBox(
                  height: ScreenUtil().setHeight(
                    10,
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
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbyone
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
                      decoration: Border.all(
                        color: hobbyone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/seetinglogo/goo.png",
                      title: '골프',
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
                      },
                      width: ScreenUtil().setHeight(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbytwo
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
                      decoration: Border.all(
                        color: hobbytwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '축구',
                      image: "image/seetinglogo/soccer.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbythree = !hobbythree) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setWidth(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbythree
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
                      decoration: Border.all(
                        color: hobbythree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/ballss.png",
                      title: '테니스',
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyfour = !hobbyfour) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbyfour
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
                      decoration: Border.all(
                        color: hobbyfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/seetinglogo/runrun.png",
                      title: '산책',
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
                        if (hobbyfive = !hobbyfive) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbyfive
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
                      decoration: Border.all(
                        color: hobbyfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '수영',
                      image: "image/seetinglogo/splee.png",
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbysix = !hobbysix) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setWidth(
                        70,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbysix
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
                      decoration: Border.all(
                        color: hobbysix
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/seetinglogo/dyrktm.png",
                      title: '요가',
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(
                        8,
                      ),
                    ),
                    ContainerWidgt(
                      onTap: () {
                        if (hobbyseven = !hobbyseven) {
                          _addCounter();
                        } else {
                          _subtractCounter();
                        }
                      },
                      width: ScreenUtil().setWidth(
                        82,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: hobbyseven
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
                      decoration: Border.all(
                        color: hobbyseven
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      image: "image/seetinglogo/piano.png",
                      title: '피아노',
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
                    10,
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
                      },
                      width: ScreenUtil().setWidth(
                        77,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personality
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
                      decoration: Border.all(
                        color: personality
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '내향적인',
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
                      },
                      width: ScreenUtil().setWidth(
                        77,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personalityone
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
                      decoration: Border.all(
                        color: personalityone
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '외향적인',
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
                      },
                      width: ScreenUtil().setWidth(
                        53,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personalitytwo
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
                      decoration: Border.all(
                        color: personalitytwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '착한',
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
                      },
                      width: ScreenUtil().setWidth(
                        101,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personalitythree
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
                      decoration: Border.all(
                        color: personalitythree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '유머감각있는',
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
                      },
                      width: ScreenUtil().setWidth(
                        65,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personalityfour
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
                      decoration: Border.all(
                        color: personalityfour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '다정한',
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
                      },
                      width: ScreenUtil().setWidth(
                        77,
                      ),
                      hight: ScreenUtil().setHeight(
                        36,
                      ),
                      color: personalityfive
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
                      decoration: Border.all(
                        color: personalityfive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(
                                255,
                                250,
                                250,
                                250,
                              ),
                      ),
                      title: '이성적인',
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(
                    56,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement<void, void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) => const PhoneAuthTwo(),
                    //   ),
                    // );
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
                        21,
                        213,
                        213,
                      ),
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Center(
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.pushReplacement<void, void>(
                        //     context,
                        //     MaterialPageRoute<void>(
                        //       builder: (BuildContext context) =>
                        //           const PhoneProfileThree(),
                        //     ),
                        //   );
                        // },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '필터 적용하기',
                              style: TextStyle(
                                color: const Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(
                                  16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(
                                6,
                              ),
                            ),
                            Container(
                              width: ScreenUtil().setWidth(
                                20,
                              ),
                              height: ScreenUtil().setHeight(
                                20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  '$_counter',
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      21,
                                      213,
                                      213,
                                    ),
                                    fontSize: ScreenUtil().setSp(
                                      12,
                                    ),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
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
//컬러 변경 메소드
}

//컨테이너박스
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
              100,
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
              style: TextStyle(
                color: Colors.black,
                fontSize: ScreenUtil().setSp(
                  14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
