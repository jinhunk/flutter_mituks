import 'dart:ui';

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mituks/chattingpage/view/confirmation.dart';
import 'package:flutter_mituks/chattingpage/view/detailgift.dart';
import 'package:flutter_mituks/chattingpage/view/detailprofile.dart';
import 'package:flutter_mituks/profile/manprofile/coinpage.dart';
import 'package:flutter_mituks/texttest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
              child: SvgPicture.asset(
                "image/Ic_toucharea.svg",
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20.0),
            child: Container(
              color: const Color.fromARGB(
                255,
                229,
                229,
                229,
              ),
              width: ScreenUtil().setWidth(
                375,
              ),
              height: ScreenUtil().setHeight(
                1,
              ),
            ),
          ),
          title: const AppbarCard(
            image: "image/profileperson.png",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(
                            24,
                          ),
                          right: ScreenUtil().setWidth(
                            20,
                          ),
                        ),
                        child: Container(
                          // width: ScreenUtil().setWidth(
                          //   152,
                          // ),
                          height: ScreenUtil().setHeight(
                            36,
                          ),
                          child: Bubble(
                            nip: BubbleNip.rightBottom,
                            color: const Color.fromARGB(
                              255,
                              3,
                              181,
                              176,
                            ),
                            child: Center(
                              child: Text(
                                '안녕하세여.반갑습니다!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    14,
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      22,
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
                        Image.asset(
                          "image/person/smaillperson.png",
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            8,
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(
                            36,
                          ),
                          child: Center(
                            child: Bubble(
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: addbutton ? height / 2.1 : 0.0,
                  width: width / 1.0,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(70),
                    ),
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
                                  setState(() {
                                    textfiled = true;
                                    print(textfiled);
                                  });
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        height: textfiled
                                            ? ScreenUtil().setHeight(254)
                                            : ScreenUtil().setHeight(
                                                540,
                                              ),
                                        child: Stack(
                                          children: [
                                            BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 10,
                                                sigmaY: 10,
                                              ),
                                              child: Container(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: ScreenUtil().setHeight(
                                                  20,
                                                ),
                                                left: ScreenUtil().setWidth(
                                                  20,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '다이아몬드 몇개를 보내시겠습니까?',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize:
                                                          ScreenUtil().setSp(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      12,
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        ScreenUtil().setWidth(
                                                      335,
                                                    ),
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      48,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      color:
                                                          const Color.fromARGB(
                                                        255,
                                                        250,
                                                        250,
                                                        250,
                                                      ),
                                                      border: Border.all(
                                                        color: const Color
                                                            .fromARGB(
                                                          255,
                                                          229,
                                                          229,
                                                          229,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      //상대유저 다이아값
                                                      child: TextFormField(
                                                        onTap: () {
                                                          setState(() {
                                                            textfiled = false;
                                                          });
                                                        },
                                                        controller:
                                                            _textEditingController,
                                                        onChanged: (value) {
                                                          userddiamondint =
                                                              value;
                                                        },
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      8,
                                                    ),
                                                  ),
                                                  //내 다이아 보유개수
                                                  Center(
                                                    child: Text(
                                                      '다이아몬드 보유 갯수: 200개',
                                                      style: TextStyle(
                                                        fontSize:
                                                            ScreenUtil().setSp(
                                                          14,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        ScreenUtil().setHeight(
                                                      28,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          164,
                                                        ),
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                          56,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            16,
                                                          ),
                                                          color: const Color
                                                              .fromARGB(
                                                            255,
                                                            245,
                                                            245,
                                                            245,
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '취소',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(
                                                                14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                          7,
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity: 0.5,
                                                        child: Container(
                                                          width: ScreenUtil()
                                                              .setWidth(
                                                            164,
                                                          ),
                                                          height: ScreenUtil()
                                                              .setHeight(
                                                            56,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              16,
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
                                                                    177,
                                                                    238,
                                                                    236,
                                                                  ).withOpacity(
                                                                    0.5,
                                                                  ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '확인',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize:
                                                                    ScreenUtil()
                                                                        .setSp(
                                                                  14,
                                                                ),
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

                                child: SvgPicture.asset(
                                  "image/chattingdiamond.svg",
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  21,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CoinConfirmation(),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  "image/chattingbigcoin.svg",
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(
                                  21,
                                ),
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
                                child: SvgPicture.asset(
                                  "image/chattinggift.svg",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(
                              8,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '다이아 보내기',
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(20),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: ScreenUtil().setWidth(
                                    3,
                                  ),
                                ),
                                child: Text(
                                  '코인 확인하기',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(
                                      12,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(20),
                              ),
                              Text(
                                '선물하기',
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(
                                    12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(
                    66,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
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
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(
                        16,
                      ),
                      top: ScreenUtil().setHeight(
                        10,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: SizedBox(
                            height: ScreenUtil().setHeight(
                              32,
                            ),
                            width: ScreenUtil().setWidth(
                              32,
                            ),
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
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            10,
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(
                            249,
                          ),
                          height: ScreenUtil().setHeight(
                            42,
                          ),
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
                            decoration: InputDecoration(
                              hintText: "메세지를 작성해주세요...",
                              hintStyle: TextStyle(
                                fontSize: ScreenUtil().setSp(
                                  13,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 229, 229, 229),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 229, 229, 229),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            10,
                          ),
                        ),
                        //보내기
                        Padding(
                          padding: EdgeInsets.only(
                            top: ScreenUtil().setHeight(
                              2,
                            ),
                          ),
                          child: SvgPicture.asset(
                            "image/send.svg",
                          ),
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
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(
          5,
        ),
      ),
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
                child: Container(
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
              const SizedBox(
                width: 20,
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
                      SvgPicture.asset(
                        "image/gender/woman.svg",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "image/map.svg",
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
                      SvgPicture.asset(
                        "image/globe-light.svg",
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
            ],
          ),
        ],
      ),
    );
  }
}
