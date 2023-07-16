import 'package:flutter/material.dart';
import 'package:flutter_mituks/barpageonepage/filterpage.dart';
import 'package:flutter_mituks/view/tabbar/barpagefour.dart';
import 'package:flutter_mituks/view/tabbar/barpagethree.dart';
import 'package:flutter_mituks/view/tabbar/barpagetwo.dart';

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
        backgroundColor: const Color.fromARGB(255, 230, 250, 249),
        elevation: 0.0,
        leadingWidth: width / 1.0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Column(
            children: [
              TabBar(
                indicator: const BoxDecoration(),
                padding: const EdgeInsets.only(left: 5.0),
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 0.0,
                ),
                // isScrollable: true,
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1,
                tabs: const [
                  Tab(
                    child: Text(
                      '신규가입',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Hot Rank',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        '거리순',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(right: 49.0),
                      child: Text(
                        '접속중',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
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
            padding: const EdgeInsets.only(
              right: 10.0,
              bottom: 10,
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
              child: const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 158, 158, 158),
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
              Color.fromARGB(255, 224, 242, 241),
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
