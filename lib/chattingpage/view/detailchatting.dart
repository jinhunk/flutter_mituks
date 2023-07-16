import 'dart:ui';

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mituks/chattingpage/view/detailgift.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';
import 'package:flutter_mituks/texttest.dart';

class DatailChattingPage extends StatefulWidget {
  const DatailChattingPage({
    super.key,
  });

  @override
  State<DatailChattingPage> createState() => _DatailChattingPageState();
}

class _DatailChattingPageState extends State<DatailChattingPage> {
  TextEditingController _textEditingController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  bool Me = false;

  bool addbutton = true;
  bool textfiled = false;

  String userddiamondint = '';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          addbutton = false;
        });
      },
      child: Scaffold(
        resizeToAvoidBottomInset: addbutton ? false : true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProfilePage(),
                ),
              );
            },
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.grey,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20.0),
            child: Container(
              color: Colors.grey,
              width: width / 1.0,
              height: 1,
            ),
          ),
          title: const AppbarCard(
            image: "images/kim.png",
            title: "김영아, 23세",
            language: '영어',
            region: '서울시 서초구',
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 220, top: 30),
                    child: Bubble(
                      nip: BubbleNip.rightBottom,
                      color: const Color.fromARGB(
                        255,
                        24,
                        187,
                        171,
                      ),
                      child: const Text(
                        '안녕하세여.반갑습니다!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          125,
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            width: 50,
                            height: 50,
                            "images/kim.png",
                          ),
                        ),
                      ),
                      Bubble(
                        nip: BubbleNip.leftBottom,
                        color: const Color.fromARGB(255, 228, 228, 228),
                        child: const Text(
                          '안녕하세여 :)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: addbutton ? height / 2.2 : 0.0,
                  width: width / 1.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    // isScrollControlled: true,
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        height: 250,
                                        child: Stack(
                                          children: [
                                            BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 10,
                                                sigmaY: 10,
                                              ),
                                              child: Container(
                                                color:
                                                    Colors.black.withOpacity(0),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    '다이아몬드 몇개를 보내시겠습니까?',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Container(
                                                    width: width / 1.1,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              230,
                                                              226,
                                                              226),
                                                    ),
                                                    child: Center(
                                                      //상대유저 다이아값
                                                      child: TextFormField(
                                                        controller:
                                                            _textEditingController,
                                                        onChanged: (value) {
                                                          userddiamondint =
                                                              value;
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5.0,
                                                  ),
                                                  //내 다이아 보유개수
                                                  const Center(
                                                    child: Text(
                                                      '다이아몬드 보유 갯수: 200개',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: width / 2.3,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                          color: const Color
                                                              .fromARGB(
                                                            255,
                                                            245,
                                                            245,
                                                            245,
                                                          ),
                                                        ),
                                                        child: const Center(
                                                          child: Text(
                                                            '취소',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Opacity(
                                                        opacity: 0.5,
                                                        child: Container(
                                                          width: width / 2.4,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              10,
                                                            ),
                                                            color: userddiamondint
                                                                        .length >
                                                                    1
                                                                ? const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    3,
                                                                    201,
                                                                    195,
                                                                  )
                                                                : const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        85,
                                                                        227,
                                                                        213)
                                                                    .withOpacity(
                                                                    0.5,
                                                                  ),
                                                          ),
                                                          child: const Center(
                                                            child: Text(
                                                              '확인',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
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
                                  );
                                },
                                //다이아 보내기

                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    243,
                                    252,
                                    252,
                                  ),
                                  radius: 40,
                                  child: Image.asset(
                                    "images/mdi_bichand-extended.png",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  243,
                                  252,
                                  252,
                                ),
                                child: Image.asset(
                                  "images/bigcoin.png",
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const DetailGiftPage(),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    243,
                                    252,
                                    252,
                                  ),
                                  radius: 40,
                                  child: Image.asset(
                                    "images/gift.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '다이아 보내기',
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Text(
                                '코인 확인하기',
                              ),
                              SizedBox(
                                width: 35.0,
                              ),
                              Text(
                                '선물하기',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 66,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 0,
                        blurRadius: 10.0,
                        offset: const Offset(
                          10,
                          -10,
                        ), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: SizedBox(
                            height: 30,
                            child: FloatingActionButton(
                              backgroundColor:
                                  const Color.fromARGB(255, 235, 235, 235),
                              onPressed: () {
                                setState(() {
                                  addbutton = true;
                                });
                                _focusNode.unfocus();
                                print(
                                  addbutton,
                                );
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width / 1.4,
                          height: 40,
                          child: Expanded(
                            child: TextField(
                              controller: _textEditingController,
                              focusNode: _focusNode,
                              textInputAction: TextInputAction.done,
                              onTap: () {
                                setState(() {
                                  //키보드자판이 올라오고나서
                                  //+버튼이 true일때 키보드자판내리기
                                  // addbutton = false;

                                  // if (addbutton = true) {
                                  //   null;
                                  // }
                                });

                                print(
                                  addbutton,
                                );
                              },
                              decoration: const InputDecoration(
                                hintText: "메세지를 입력해주세요...",
                                hintStyle: TextStyle(fontSize: 14.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 10,
                        ),
                        //보내기
                        Image.asset(
                          "images/button.png",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarCard extends StatelessWidget {
  final String image;
  final String title;
  final String language;
  final String region;

  const AppbarCard({
    super.key,
    required this.image,
    required this.title,
    required this.region,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement<void, void>(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (BuildContext context) =>
                  //         const DetailProfilePage(),
                  //   ),
                  // );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: image != null
                        ? Image.asset(
                            image!,
                            // width: 20,
                            // height: 30,
                            fit: BoxFit.cover,
                          )
                        : const Text(''),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/gender/female.png",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_sharp,
                        color: Color.fromARGB(255, 137, 136, 136),
                        size: 15,
                      ),
                      Text(
                        region,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Image.asset(
                        "images/globe-light.png",
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        language,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 85,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Texttest(),
                    ),
                  );
                },
                child: Image.asset(
                  "images/dots.vertical.solid.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
