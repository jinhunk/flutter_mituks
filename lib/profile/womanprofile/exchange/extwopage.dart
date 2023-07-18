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
          Containermoney(
            title: "118,000C",
            yymmdd: '2023.05.16',
            image: "image/moneyfive.svg",
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
          Containermoney(
            title: "59,000C",
            yymmdd: '2023.04.03',
            image: "image/moneyfive.svg",
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(82),
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
          SizedBox(
            width: ScreenUtil().setWidth(
              7,
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(
              111,
            ),
            top: ScreenUtil().setHeight(
              18,
            ),
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
            left: ScreenUtil().setWidth(
              142,
            ),
            top: ScreenUtil().setHeight(
              18,
            ),
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
