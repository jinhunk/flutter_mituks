import 'dart:ui';

import 'package:flutter/material.dart';

class ExOnePage extends StatefulWidget {
  const ExOnePage({super.key});

  @override
  State<ExOnePage> createState() => _ExOnePageState();
}

class _ExOnePageState extends State<ExOnePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Container(
                width: width / 1.1,
                height: height / 1.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: const Color.fromARGB(
                    255,
                    250,
                    250,
                    250,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 13,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/alert-circle-solid.png",
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                '환급 전 꼭 확인해주세요.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/info_chack.png",
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                "현금 환금 신청은 인증 이후 이용하실 수 있습니다.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(120),
                                  ),
                                  height: 3,
                                  width: 3,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                '인증 자의 인증 정보 (신분증 / 휴대전화 등)과 인증 자의\n입금 정보(계좌 소유자 등)이 상이할 경우 인증 및 현금 환\n급이 거절될 수 있습니다.',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/info_chack.png",
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                "아래 양식에 따라 메일을 제출해 주세요.",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: width / 1.2,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Row(
                                children: [
                                  Text(
                                    '받는사람  :',
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "chlwlsgur23@gmail.com",
                                        hintStyle: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: width / 1.2,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '메일제목  :',
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "환전 인증 신청_신청자 아아디",
                                        hintStyle: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: width / 1.2,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '신청자 성명:',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('신청자 휴대 전화 번호(본인 명의):',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 38, 38, 38),
                                          )),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('신청자 아이디:',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 38, 38, 38),
                                          )),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.zero,
                                          ),
                                        ),
                                      ),
                                    ],
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
              ),
            ),
            //환전할 코인금액을 입력하세요,
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "환전할 코인금액을 입력하세요.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "최소 10,000코인 이상 환전이 가능해요.",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width / 1.1,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 239, 239, 239),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/coinsss.png",
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "1,000",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Text("C")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    width: width / 1.1,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 239, 239, 239),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/w.png",
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "1,000",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Text("원")
                            ],
                          ),
                        ),
                        Positioned(
                          left: 150.0,
                          bottom: 30.0,
                          child: Image.asset(
                            "images/arrow.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        '수수료 포함 차감되길 Coin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: width / 2.60),
                      const Text(
                        '0 Coin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text('실버등금 현금 지급 수수료 18%')
                ],
              ),
            ),
            //입금될 통장 계좌 정보
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "입금될 통장 계좌 정보",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: width / 4.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 35,
                        width: width / 4.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("images/pen.png"),
                            const Text(
                              '수정하기',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "통장 소유주",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: width / 1.1,
                    height: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 252, 248, 248),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "임보람",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "은행명",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: height / 1.4,
                                child: Stack(
                                  children: [
                                    BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 5,
                                        sigmaY: 5,
                                      ),
                                      child: Container(
                                        color: Colors.black.withOpacity(
                                          0,
                                        ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 18.0,
                                          top: 20.0,
                                        ),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              '은행을 선택해주세요',
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color.fromARGB(
                                                        255, 236, 232, 232),
                                                  ),
                                                  height: height / 10.0,
                                                  width: width / 3.5,
                                                  child: const Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Bank(
                                                        image:
                                                            "images/bank/BankIcon.png",
                                                      ),
                                                      Text(
                                                        'NH농협',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      });
                    },
                    child: Container(
                      width: width / 1.1,
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 252, 248, 248),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '농협은행',
                            ),
                            Image.asset(
                              "images/Icon.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "계좌번호",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: width / 1.1,
                    height: 40.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 252, 248, 248)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "351-1234-1234-34",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: width / 1.1,
                    height: height / 4.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 248, 246, 246),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15.0,
                          left: 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "images/icon-exclamation-circle-mono.png",
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  const Text(
                                    '유의사항',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Notice(
                                    title: "현금 지급 신청은 늘 가능합니다.",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Notice(
                                    title: "현금 지급 수수료는 레벨등급에 따라 차등 적용됩니다.",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Notice(
                                    title:
                                        "현금 지급 신청 후 공요일을 제외한\n일주일 내내 입금 처리 됩니다..",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Notice(
                                    title:
                                        "환전 금액이 5만원 이상 초과될 시에는,3.3%사업소득세\n원천징수 후 입금 처리됩니다.",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: height / 3.0,
                              width: 1.0,
                              child: Stack(
                                children: [
                                  BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 5,
                                      sigmaY: 5,
                                    ),
                                    child: Container(
                                      color: Colors.black.withOpacity(
                                        0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "images/alert-circle-solid.png",
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            const Text(
                                              "현재 인증 대기중입니다.",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15.0,
                                        ),
                                        const Text(
                                          '위 이메일 형식대로 보내시거나,\n이미 보내셨다면 영업일 기준으로\n인증까지 1~2일이 소요될 수 있으니,\n후에 다시 한번 시도해주세요.',
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            color: const Color.fromARGB(
                                                255, 96, 226, 213),
                                          ),
                                          height: height / 14.0,
                                          width: width / 1.1,
                                          child: const Center(
                                            child: Text(
                                              '확인',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: const Color.fromARGB(255, 96, 226, 213),
                      ),
                      height: height / 14.0,
                      width: width / 1.0,
                      child: const Center(
                        child: Text(
                          '환전하기',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
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
    );
  }
}

class Bank extends StatelessWidget {
  final String image;
  const Bank({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: image != null
          ? Image.asset(
              image,
            )
          : const Text(
              "",
            ),
    );
  }
}

//유의사항
class Notice extends StatelessWidget {
  final String title;
  const Notice({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(120),
          ),
          height: 5,
          width: 5,
        ),
        Text(
          title,
        ),
      ],
    );
  }
}
