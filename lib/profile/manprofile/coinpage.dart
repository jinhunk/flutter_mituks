import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CoinPage extends StatefulWidget {
  const CoinPage({super.key});

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          '코인 구매',
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
          top: ScreenUtil().setHeight(
            6,
          ),
          left: ScreenUtil().setWidth(
            20,
          ),
          right: ScreenUtil().setWidth(
            20,
          ),
        ),
        child: Column(
          children: [
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                83,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "1,000C",
              description: "50C 보너스",
              money: "₩3,300",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                83,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "1,650C",
              description: "70C 보너스",
              money: "₩5,500",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                88,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "3,300C",
              description: "150C 보너스",
              money: "₩11,000",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              container: Container(
                width: ScreenUtil().setWidth(
                  33,
                ),
                height: ScreenUtil().setHeight(
                  20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(
                      255,
                      255,
                      109,
                      109,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    '인기',
                    style: TextStyle(
                      color: const Color.fromARGB(
                        255,
                        255,
                        109,
                        109,
                      ),
                      fontSize: ScreenUtil().setSp(
                        12,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              title: "10,000C",
              description: "500C 보너스",
              money: "₩33,000",
              moneywidth: ScreenUtil().setWidth(
                88,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                10,
              ),
            ),
            CashContainer(
              moneywidth: ScreenUtil().setWidth(
                88,
              ),
              moneyheight: ScreenUtil().setHeight(
                34,
              ),
              title: "17,000C",
              description: "750C 보너스",
              money: "₩55,000",
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
              title: "33,000C",
              description: "1,500C 보너스",
              money: "₩110,000",
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
              title: "91,000C",
              description: "4,500C 보너스",
              money: "₩300,000",
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
    return Center(
      child: Container(
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
              top: ScreenUtil().setHeight(
                23.5,
              ),
              left: ScreenUtil().setWidth(
                18.5,
              ),
              child: SvgPicture.asset(
                "image/bigcoin.svg",
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
                44,
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
                236,
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
                    // Image.asset(
                    //   "/Users/chlwlsgur1/FlutterProject/flutter_mituk/images/coinsss.png",
                    // ),
                    Text(
                      money,
                      style: TextStyle(
                        color: const Color.fromARGB(
                          255,
                          2,
                          121,
                          117,
                        ),
                        fontWeight: FontWeight.w700,
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
              top: ScreenUtil().setHeight(
                20,
              ),
              left: ScreenUtil().setWidth(
                148,
              ),
              child: Container(
                child: container,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
