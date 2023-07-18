import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DiamondPage extends StatefulWidget {
  const DiamondPage({super.key});

  @override
  State<DiamondPage> createState() => _DiamondPageState();
}

class _DiamondPageState extends State<DiamondPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (BuildContext context) => const RootTab(),
            //   ),
            // );
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
          ),
        ),
        title: Text(
          '다이아몬드 구매',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(
              18,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(
            20,
          ),
          top: ScreenUtil().setHeight(
            20,
          ),
        ),
        child: Column(
          children: [
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                98,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "30 다이아",
              description: "5 다이아 보너스",
              money: "3,000C",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                98,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "50 다이아",
              description: "7 다이아 보너스",
              money: "5,000C",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                98,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "100 다이아",
              description: "15 다이아 보너스",
              money: "10,000C",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            // CashContainer(
            //   container: Container(
            //     width: MediaQuery.of(context).size.width / 12.0,
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color: Colors.red,
            //       ),
            //       borderRadius: BorderRadius.circular(
            //         20,
            //       ),
            //       color: Colors.white,
            //     ),
            //     child: const Text(
            //       '인기',
            //       style: TextStyle(color: Colors.red, fontSize: 12.0),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            //   title: "1000 다이아",
            //   description: "15 다이아 보너스",
            //   money: "10,000C",
            //   moneywidth: width / 4.5,
            //   moneyheight: 25,
            // ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                106,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "300 다이아",
              description: "50 다이아 보너스",
              money: "30,000C",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                106,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "900 다이아",
              description: "160 다이아 보너스",
              money: "90,000C",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CashContainer extends StatelessWidget {
  final String title;
  final String? image;
  final String description;
  final Widget? container;
  final double? moneywidth;
  final double? moneyheight;
  final String money;

  const CashContainer({
    super.key,
    required this.title,
    this.image,
    required this.description,
    this.container,
    this.moneywidth,
    this.moneyheight,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: ScreenUtil().setWidth(
        335,
      ),
      height: ScreenUtil().setHeight(
        82,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: const Color.fromARGB(
          255,
          243,
          252,
          252,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: ScreenUtil().setHeight(25.67),
            left: ScreenUtil().setWidth(
              18.5,
            ),
            child: SvgPicture.asset(
              "image/mandiamond.svg",
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(
              20,
            ),
            left: ScreenUtil().setWidth(
              68,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: ScreenUtil().setSp(
                  18,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(
              47,
            ),
            left: ScreenUtil().setWidth(
              68,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "image/plus.svg",
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(
                    2,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(
              24,
            ),
            left: ScreenUtil().setWidth(
              223,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                  255,
                  217,
                  247,
                  246,
                ),
                borderRadius: BorderRadius.circular(
                  100,
                ),
              ),
              width: moneywidth,
              height: moneyheight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "image/mancoin.svg",
                  ),
                  Text(
                    money,
                    style: TextStyle(
                      color: const Color.fromARGB(
                        255,
                        2,
                        121,
                        117,
                      ),
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(
                        16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //인기컨테이너
          Positioned(
            top: 22,
            left: 167,
            child: Container(
              child: container,
            ),
          ),
        ],
      ),
    );
  }
}
