import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';


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

  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const RootTab(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          '필터',
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          // 로딩바
          child: Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '나이별',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 15,
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
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      title: '23~26세',
                      width: width / 4.5,
                      decoration: Border.all(
                        color: age
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 4.5,
                      decoration: Border.all(
                        color: agetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 4.5,
                      color: agethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                      width: width / 4.5,
                      color: agefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 5.5,
                      color: agefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: agefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '언어',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10,
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
                      width: width / 4.5,
                      color: language
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: language
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 4.7,
                      color: languagetwo
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagetwo
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 5.5,
                      color: languagethree
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagethree
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                      width: width / 5.5,
                      color: languagefour
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagefour
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
                      width: width / 4.7,
                      color: languagefive
                          ? const Color.fromARGB(255, 230, 250, 249)
                          : const Color.fromARGB(255, 250, 250, 250),
                      decoration: Border.all(
                        color: languagefive
                            ? const Color.fromARGB(255, 3, 201, 195)
                            : const Color.fromARGB(255, 250, 250, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '관심사',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '공부',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '게임',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '동물',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '음식',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '운동',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '문화생활',
                      width: width / 5.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '해왜여행',
                      width: width / 5.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '직업',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '학생',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '모델',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '선생님',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '사업가',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '승무원',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '취미',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '취미',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '취미',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '취미',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '골프',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '축구',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '테니스',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '산책',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '수영',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '요가',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '피아노',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '성격',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '내향적인',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '외향적인',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '착한',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '유머감각있는',
                      width: width / 4.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ContainerWidgt(
                      title: '다정한',
                      width: width / 6.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidgt(
                      title: '이성적인',
                      width: width / 6.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
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
                    width: width / 1.1,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        21,
                        213,
                        213,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
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
                            const Text(
                              '필터 적용하기',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: width / 20.0,
                              height: height / 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Text(
                                  '$_counter',
                                  style: const TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      21,
                                      213,
                                      213,
                                    ),
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
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
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
                    width: 20,
                    height: 30,
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
            ),
          ],
        ),
      ),
    );
  }
}
