import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinSettingPage extends StatefulWidget {
  const CoinSettingPage({super.key});

  @override
  State<CoinSettingPage> createState() => _CoinSettingPageState();
}

class _CoinSettingPageState extends State<CoinSettingPage> {
  int valueHolder = 50;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
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
        title: const Text(
          '코인 설정하기',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(
            48,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '기본 메세지 코인 설정',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(
                    16,
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  20,
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(
                  117,
                ),
                height: ScreenUtil().setHeight(
                  123,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 148, 233, 225),
                    width: 10,
                  ),
                  color: const Color.fromARGB(255, 31, 190, 174),
                  borderRadius: BorderRadius.circular(
                    70,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$valueHolder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(
                          28,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Coin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(
                          16,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(
                  52,
                ),
              ),
              Container(
                child: Slider(
                  value: valueHolder.toDouble(),
                  min: 50,
                  max: 500,
                  divisions: 100,
                  activeColor: const Color.fromARGB(
                    255,
                    3,
                    201,
                    195,
                  ),
                  thumbColor: Colors.white,
                  inactiveColor: const Color.fromARGB(
                    255,
                    163,
                    163,
                    163,
                  ),
                  label: '${valueHolder.round()}',
                  onChanged: (double newValue) {
                    setState(() {
                      valueHolder = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()}';
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(
                        20,
                      ),
                    ),
                    child: Text(
                      '50',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(
                          14,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '275',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(
                        14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(
                        20,
                      ),
                    ),
                    child: Text(
                      '500',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(
                          14,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
