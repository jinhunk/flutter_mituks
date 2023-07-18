import 'package:flutter/material.dart';
import 'package:flutter_mituks/barpageonepage/filterpage.dart';
import 'package:flutter_mituks/view/tabbar/barpagefour.dart';
import 'package:flutter_mituks/view/tabbar/barpagethree.dart';
import 'package:flutter_mituks/view/tabbar/barpagetwo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'tabbar/barpageone.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(
          255,
          230,
          250,
          249,
        ),
        elevation: 0.0,

        title: Padding(
          padding: EdgeInsets.only(
            right: ScreenUtil().setWidth(
              26,
            ),
          ),
          child: Column(
            children: [
              TabBar(
                indicator: const BoxDecoration(),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(
                    5,
                  ),
                ),
                isScrollable: true,
                controller: _tabController,
                labelColor: const Color.fromARGB(
                  255,
                  23,
                  23,
                  23,
                ),
                unselectedLabelColor: const Color.fromARGB(
                  255,
                  163,
                  163,
                  163,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1,
                tabs: [
                  Tab(
                    child: Text(
                      '신규가입',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            18,
                          ),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Hot Rank',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            18,
                          ),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      '거리순',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(
                            18,
                          ),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      '접속중',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(
                          18,
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
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(1.0),
        //   child: Container(
        //     margin: const EdgeInsets.only(bottom: 6.0),
        //     width: MediaQuery.of(context).size.width / 1.0,
        //     height: MediaQuery.of(context).size.height / 500.0,
        //     color: const Color.fromARGB(255, 248, 245, 245),
        //   ),
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: ScreenUtil().setWidth(
                12,
              ),
              bottom: ScreenUtil().setHeight(
                5,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const FilterPage(),
                  ),
                );
              },
              child: SvgPicture.asset(
                "image/action.svg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(
                255,
                230,
                250,
                249,
              ),
              Colors.white,
            ],
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: const [
            BarPageOne(),
            BarPageTwo(),
            BarPageThree(),
            BarPageFour(),
          ],
        ),
      ),
    );
  }
}
