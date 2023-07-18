import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinConfirmation extends StatefulWidget {
  const CoinConfirmation({super.key});

  @override
  State<CoinConfirmation> createState() => _CoinConfirmationState();
}

class _CoinConfirmationState extends State<CoinConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
          ),
        ),
        title: Text(
          '메세지 코인 확인하기',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(
                18,
              ),
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(
            48,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '김영아님의 기본 메세지 코인',
                style: TextStyle(
                  color: const Color.fromARGB(
                    255,
                    64,
                    64,
                    64,
                  ),
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(
                    16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                20,
              ),
            ),
            SvgPicture.asset(
              "image/coinsetting.svg",
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                400,
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    ),
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  width: ScreenUtil().setWidth(
                    335,
                  ),
                  height: ScreenUtil().setHeight(
                    56,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
