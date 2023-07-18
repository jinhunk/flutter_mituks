import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../view/cashpage.dart';
import '../view/chattingpage.dart';
import '../view/mainpage.dart';
import '../view/profilepage.dart';

class RootTab extends StatefulWidget {
  const RootTab({
    super.key,
  });

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  late TabController _controller; //late 미루는 언젠가는
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);

    // _controller.addListener(tabListener);
  }

  @override
  void dispose() {
    // _controller.removeListener(tabListener);
    super.dispose();
  }

  // void tabListener() {
  //   setState(() {
  //     _selectedIndex = _controller.index;
  //   });
  //   if (_selectedIndex == 3) {
  //     _showModalBottomSheet();
  //   }
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_selectedIndex == 3) {
      // Call the function to show the modal bottom sheet
      _showModalBottomSheet();
    }
  }

// 프로필 바텀시트
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      builder: (BuildContext context) {
        return Stack(
          children: [
            Container(
              height: ScreenUtil().setHeight(
                404,
              ),
              width: ScreenUtil().setWidth(
                375,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(
                  20,
                ),
                top: ScreenUtil().setHeight(
                  20,
                ),
                right: ScreenUtil().setWidth(
                  20,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '수수료 감면 혜택 안내',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(
                        20,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: ScreenUtil().setHeight(
                        234,
                      ),
                      width: ScreenUtil().setWidth(
                        380,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          245,
                          245,
                          245,
                        ),
                        borderRadius: BorderRadius.circular(
                          16,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/bronz.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '브론즈',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '20%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(
                                12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/silver.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '실버',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '18%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(
                                12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/gold.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '골드',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '16%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(
                                12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/ruby.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '루비',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '14%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(
                                12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/emerald.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '에메랄드',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '12%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(
                                12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "image/level/sapphire.svg",
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(
                                        8,
                                      ),
                                    ),
                                    Text(
                                      '사파이어',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(
                                      20,
                                    ),
                                  ),
                                  child: Text(
                                    '10%',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: ScreenUtil().setSp(
                                        14,
                                      ),
                                      fontWeight: FontWeight.bold,
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
                  SizedBox(
                    height: ScreenUtil().setHeight(
                      20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromARGB(
                              255,
                              245,
                              245,
                              245,
                            ),
                          ),
                          height: ScreenUtil().setHeight(
                            56,
                          ),
                          width: ScreenUtil().setWidth(
                            164,
                          ),
                          child: Center(
                            child: Text(
                              '취소',
                              style: TextStyle(
                                color: const Color.fromARGB(
                                  255,
                                  82,
                                  82,
                                  82,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(
                                  16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(
                            5,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromARGB(255, 3, 201, 195),
                          ),
                          height: ScreenUtil().setHeight(
                            56,
                          ),
                          width: ScreenUtil().setWidth(
                            164,
                          ),
                          child: Center(
                            child: Text(
                              '확인',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  final List<Widget> _bottomNavBarItems = [
    MainPage(),
    ChattingPage(),
    CashPage(),
    ProfilePage(),
  ];
  build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavBarItems.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(
          255,
          3,
          201,
          195,
        ),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "image/thumbs-upsvg.svg",
              color: _selectedIndex == 0
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : const Color.fromARGB(
                      255,
                      212,
                      212,
                      212,
                    ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  "image/message-bubble.svg",
                  color: _selectedIndex == 1
                      ? const Color.fromARGB(
                          255,
                          3,
                          201,
                          195,
                        )
                      : const Color.fromARGB(
                          255,
                          212,
                          212,
                          212,
                        ),
                ),
                Positioned(
                  bottom: ScreenUtil().setHeight(
                    17,
                  ),
                  left: ScreenUtil().setWidth(
                    17,
                  ),
                  child: Container(
                    width: ScreenUtil().setWidth(
                      8,
                    ),
                    height: ScreenUtil().setHeight(
                      8,
                    ),
                    decoration: _selectedIndex == 1
                        ? BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: const Color.fromARGB(
                              255,
                              255,
                              105,
                              105,
                            ),
                            borderRadius: BorderRadius.circular(
                              100,
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("image/bottomdiamond.svg",
                color: _selectedIndex == 2
                    ? const Color.fromARGB(
                        255,
                        3,
                        201,
                        195,
                      )
                    : null),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "image/userperson.svg",
              color: _selectedIndex == 3
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : const Color.fromARGB(
                      255,
                      212,
                      212,
                      212,
                    ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
