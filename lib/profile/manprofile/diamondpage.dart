import 'package:flutter/material.dart';
import 'package:flutter_mituks/profile/manprofile/manprofilepage.dart';


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
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ManProfilePage(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey,
          ),
        ),
        title: const Text(
          '다이아몬드 구매',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          CashContainer(
            moneywidth: width / 5.0,
            moneyheight: 25,
            title: "100 다이아",
            description: "2 다이아 보너스",
            money: "1,000C",
          ),
          const SizedBox(
            height: 10.0,
          ),
          CashContainer(
            moneywidth: width / 5.0,
            moneyheight: 25,
            title: "300 다이아",
            description: "5 다이아 보너스",
            money: "3,000C",
          ),
          const SizedBox(
            height: 10.0,
          ),
          CashContainer(
            moneywidth: width / 5.0,
            moneyheight: 25,
            title: "500 다이아",
            description: "7 다이아 보너스",
            money: "5,000C",
          ),
          const SizedBox(
            height: 10.0,
          ),
          CashContainer(
            container: Container(
              width: MediaQuery.of(context).size.width / 12.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: Colors.white,
              ),
              child: const Text(
                '인기',
                style: TextStyle(color: Colors.red, fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ),
            title: "1000 다이아",
            description: "15 다이아 보너스",
            money: "10,000C",
            moneywidth: width / 4.5,
            moneyheight: 25,
          ),
          const SizedBox(
            height: 10.0,
          ),
          CashContainer(
            moneywidth: width / 4.5,
            moneyheight: 25,
            title: "3000 다이아",
            description: "50 다이아 보너스",
            money: "30,000C",
          ),
          const SizedBox(
            height: 10.0,
          ),
          CashContainer(
            moneywidth: width / 4.5,
            moneyheight: 25,
            title: "9000 다이아",
            description: "160 다이아 보너스",
            money: "90,000C",
          ),
        ],
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
        width: width / 1.12,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
              top: 20,
              left: 15,
              child: Image.asset(
                "images/diamond.png",
              ),
            ),
            Positioned(
              top: 20,
              left: 70,
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 42,
              left: 70,
              child: Row(
                children: [
                  Image.asset(
                    "images/plus-circle-solid.png",
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20,
              left: 250,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    217,
                    247,
                    246,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: moneywidth,
                height: moneyheight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/coinsss.png",
                    ),
                    Text(
                      money,
                      style: const TextStyle(
                        color: Color.fromARGB(
                          255,
                          2,
                          121,
                          117,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //인기컨테이너
            Positioned(
              top: 21,
              left: 167,
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
