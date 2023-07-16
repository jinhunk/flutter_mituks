import 'dart:ui';

import 'package:flutter/material.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // Image.asset("lib/flutter_img.png", fit: BoxFit.fill,),
            // ImageFiltered(
            //   imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            //   child: Container(
            //     color: Colors.black.withOpacity(0),
            //   )
            // ),
            Container(
              height: 1000,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(),
              ),
            ),
            Container(
              // height: height / 1.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Text(
                        '수수료 감면 혜택 안내',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        height: 280,
                        width: width / 1.1,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/crown-illust.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '브론즈',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '20%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/crown-selver.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '실버',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '18%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/crown-gold.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '골드',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '16%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/ruby.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '루비',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '14%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/emerald.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '에메랄드',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '12%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/level/sapphire.png",
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        '사파이어',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      '10%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(
                                255,
                                245,
                                245,
                                245,
                              ),
                            ),
                            height: height / 13.0,
                            width: width / 2.2,
                            child: const Center(
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  color: Color.fromARGB(
                                    255,
                                    82,
                                    82,
                                    82,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 3, 201, 195),
                            ),
                            height: height / 13.0,
                            width: width / 2.2,
                            child: const Center(
                              child: Text(
                                '확인',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
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
            icon: Image.asset(
              "images/botoomnavlogo/up.png",
              color: _selectedIndex == 0
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/botoomnavlogo/message-bubble-solid.png",
              color: _selectedIndex == 1
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/botoomnavlogo/diamond.png",
              color: _selectedIndex == 2
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "images/botoomnavlogo/user.png",
              color: _selectedIndex == 3
                  ? const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    )
                  : Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
