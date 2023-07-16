import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/profile/womanprofile/exchange/exonepage.dart';
import 'package:flutter_mituks/profile/womanprofile/exchange/extwopage.dart';


class ExChangePage extends StatefulWidget {
  const ExChangePage({super.key});

  @override
  _ExChangePageState createState() => _ExChangePageState();
}

class _ExChangePageState extends State<ExChangePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          '환전 신청',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          indicatorColor: const Color.fromARGB(
            255,
            113,
            213,
            203,
          ),
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          tabs: const [
            Tab(
              child: Text(
                '환전 신청',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Tab(
              child: Text(
                '환전 내역',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ExOnePage(),
          ExTwoPage(),
        ],
      ),
    );
  }
}
