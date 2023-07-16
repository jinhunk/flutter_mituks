import 'package:flutter/material.dart';

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
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.grey,
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
        padding: const EdgeInsets.only(top: 80.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '기본 메세지 코인 설정',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                width: width / 3.5,
                height: 110,
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
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Coin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Slider(
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
                inactiveColor: Colors.grey,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Text(
                      '50',
                    ),
                  ),
                  Text(
                    '275',
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15.0,
                    ),
                    child: Text(
                      '500',
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
