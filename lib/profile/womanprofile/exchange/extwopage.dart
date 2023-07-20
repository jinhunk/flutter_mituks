import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExTwoPage extends StatefulWidget {
  const ExTwoPage({super.key});

  @override
  State<ExTwoPage> createState() => _ExTwoPageState();
}

class _ExTwoPageState extends State<ExTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ScreenUtil().setWidth(
          20,
        ),
        right: ScreenUtil().setWidth(
          20,
        ),
        top: ScreenUtil().setHeight(
          20,
        ),
      ),
      child: Column(
        children: [
          Containermoney(
            height: ScreenUtil().setHeight(
              17,
            ),
            width: ScreenUtil().setWidth(
              112,
            ),
            moneyheight: ScreenUtil().setWidth(
              17,
            ),
            moneywidth: ScreenUtil().setWidth(
              140,
            ),
            title: "590,000C",
            yymmdd: '2023.06.23',
            image: "image/moneyfive.svg",
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                2,
                161,
                156,
              ),
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            moneytitle: "환전 완료",
          ),
          SizedBox(
            height: ScreenUtil().setHeight(
              10,
            ),
          ),
          Containermoney(
            //aroow 사이즈
            height: ScreenUtil().setHeight(
              17,
            ),
            width: ScreenUtil().setWidth(
              108,
            ),
            moneyheight: ScreenUtil().setWidth(17),
            moneywidth: ScreenUtil().setWidth(
              137,
            ),
            title: "118,000C",
            yymmdd: '2023.05.16',
            image: "image/moneymoney.svg",
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                115,
                115,
                115,
              ),
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            moneytitle: "환전 대기",
          ),
          SizedBox(
            height: ScreenUtil().setHeight(
              10,
            ),
          ),
          Containermoney(
            height: ScreenUtil().setHeight(
              17,
            ),
            width: ScreenUtil().setWidth(
              102,
            ),
            moneyheight: ScreenUtil().setWidth(17),
            moneywidth: ScreenUtil().setWidth(
              131,
            ),
            title: "59,000C",
            yymmdd: '2023.04.03',
            image: "image/moneymoneys.svg",
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                255,
                115,
                115,
                115,
              ),
              borderRadius: BorderRadius.circular(
                100,
              ),
            ),
            moneytitle: "환전 대기",
          ),
        ],
      ),
    );
  }
}

class Containermoney extends StatelessWidget {
  final double? width;
  final double? height;
  final double? moneywidth;
  final double? moneyheight;
  final String title;
  final String yymmdd;
  final String image;
  final String moneytitle;

  final Decoration decoration;
  const Containermoney({
    super.key,
    required this.title,
    required this.yymmdd,
    required this.image,
    required this.moneytitle,
    required this.decoration,
    this.width,
    this.height,
    this.moneywidth,
    this.moneyheight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(
        82,
      ),
      width: ScreenUtil().setWidth(
        335,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(
          255,
          250,
          250,
          250,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: ScreenUtil().setWidth(
              16,
            ),
            top: ScreenUtil().setHeight(
              18,
            ),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: const Color.fromARGB(
                  255,
                  23,
                  23,
                  23,
                ),
                fontSize: ScreenUtil().setSp(
                  18,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: width,
            top: height,
            child: SvgPicture.asset(
              "image/arroww.svg",
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(
              46,
            ),
            left: ScreenUtil().setWidth(
              16,
            ),
            child: Text(
              yymmdd,
            ),
          ),
          Positioned(
            left: moneywidth,
            top: moneyheight,
            child: SvgPicture.asset(
              image,
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(
              262,
            ),
            top: ScreenUtil().setHeight(
              18,
            ),
            child: Container(
              width: ScreenUtil().setWidth(
                57,
              ),
              height: ScreenUtil().setHeight(
                20,
              ),
              decoration: decoration,
              child: Center(
                child: Text(
                  moneytitle,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(
                      12,
                    ),
                    color: const Color.fromARGB(
                      255,
                      255,
                      255,
                      255,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
