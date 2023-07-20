import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/model/product.card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'phoneprofiletwo.dart';

class PhoneProfile extends StatefulWidget {
  const PhoneProfile({super.key});

  @override
  State<PhoneProfile> createState() => _PhoneProfileState();
}

class _PhoneProfileState extends State<PhoneProfile> {
  TextEditingController _controllername = TextEditingController();
  // TextEditingController _controlleremail = TextEditingController();
  // TextEditingController _controllerHeight = TextEditingController();

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

  bool _colors = false;
  double value = 0.3;
  Color _color = Colors.white;

  String username = '';

  Future<void> profileauth() async {
    UserModel models = UserModel();
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    models.uid = FirebaseAuth.instance.currentUser!.uid; // 현재유저 uid
    models.name = _controllername.text; //현재유저 이메일
    await firebaseFirestore
        .collection("user") //컬렉션
        .doc(FirebaseAuth.instance.currentUser!.uid) //문서추가
        .set(models.toMap()); //user 정보들추가
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //로딩바
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: SafeArea(
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
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      4,
                    ),
                    child: const LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: Colors.grey,
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

                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(
                        6,
                      ),
                      right: ScreenUtil().setWidth(
                        20,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '1/3',
                          style: TextStyle(
                            color: const Color.fromARGB(
                              255,
                              115,
                              115,
                              115,
                            ),
                            fontSize: ScreenUtil().setSp(
                              12,
                            ),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      24,
                    ),
                  ),
                  Text(
                    '프로필을 완성해주세요!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(
                        20,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: ScreenUtil().setHeight(
                      18,
                    ),
                  ),
                  Text(
                    '이름',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                    ),
                  ),

                  //이메일주소
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),

                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    child: TextFormField(
                      onSaved: (value) {
                        username = value!;
                      },
                      onChanged: (value) {
                        username = value;
                      },
                      textInputAction: TextInputAction.next,
                      controller: _controllername,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          250,
                          250,
                          250,
                        ),
                        //누를떄 컨테이너 모양
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        //누르기 전 컨테이너 모양
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        hintText: '홍길동',
                        hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Text(
                    '아이디',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      // controller: _controlleremail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          250,
                          250,
                          250,
                        ),
                        //누를떄 컨테이너 모양
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        //누르기 전 컨테이너 모양
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        hintText: '아이디 입력',
                        hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                        ),
                      ),
                      onChanged: ((value) {
                        setState(
                          () {
                            // userId = value;
                          },
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Text(
                    '이메일',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      // controller: _controlleremail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          250,
                          250,
                          250,
                        ),
                        //누를떄 컨테이너 모양
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        //누르기 전 컨테이너 모양
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        hintText: 'abc@gmail.com',
                        hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                        ),
                      ),
                      onChanged: ((value) {
                        setState(
                          () {
                            // userId = value;
                          },
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(
                        20,
                      ),
                    ),
                    child: const Text(
                      '성별',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          23,
                          23,
                          23,
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
                    padding: const EdgeInsets.only(
                      left: 0,
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,

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
                                  color: _manbox
                                      ? Color.fromARGB(
                                          255,
                                          3,
                                          201,
                                          195,
                                        )
                                      : const Color.fromARGB(
                                          255,
                                          82,
                                          82,
                                          82,
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
                                  color: _womanbox
                                      ? Color.fromARGB(
                                          255,
                                          3,
                                          201,
                                          195,
                                        )
                                      : const Color.fromARGB(
                                          255,
                                          82,
                                          82,
                                          82,
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
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  const Text(
                    '생년월일',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                    ),
                  ),

                  //이메일주소
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      // controller: _controlleremail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          250,
                          250,
                          250,
                        ),
                        //누를떄 컨테이너 모양
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        //누르기 전 컨테이너 모양
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        hintText: '19921192',
                        hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                        ),
                      ),
                      onChanged: ((value) {
                        setState(
                          () {
                            // userId = value;
                          },
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  const Text(
                    '위치',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        255,
                        23,
                        23,
                        23,
                      ),
                    ),
                  ),

                  //이메일주소
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(
                      335,
                    ),
                    height: ScreenUtil().setHeight(
                      48,
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      // controller: _controlleremail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          250,
                          250,
                          250,
                        ),
                        //누를떄 컨테이너 모양
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        //누르기 전 컨테이너 모양
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                              255,
                              229,
                              229,
                              229,
                            ),
                          ),
                        ),
                        hintText: '서울시 강남구',
                        hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            14,
                          ),
                          color: const Color.fromARGB(
                            255,
                            163,
                            163,
                            163,
                          ),
                        ),
                      ),
                      onChanged: ((value) {
                        setState(
                          () {
                            // userId = value;
                          },
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      40,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PhoneProfileTwo(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Colors.grey,
                        // ),
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                        color: const Color.fromARGB(
                          255,
                          3,
                          201,
                          195,
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
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      350,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
