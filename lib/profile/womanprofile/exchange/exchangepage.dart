import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/profile/womanprofile/exchange/exonepage.dart';
import 'package:flutter_mituks/profile/womanprofile/exchange/extwopage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const RootTab(),
              ),
            );
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
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
          tabs: [
            Tab(
              child: Text(
                '환전 신청',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(
                    14,
                  ),
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(
                    255,
                    34,
                    34,
                    34,
                  ),
                ),
              ),
            ),
            Tab(
              child: Text(
                '환전 내역',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(
                    14,
                  ),
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(
                    255,
                    34,
                    34,
                    34,
                  ),
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
