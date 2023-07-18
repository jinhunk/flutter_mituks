import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailGiftPage extends StatefulWidget {
  const DetailGiftPage({super.key});

  @override
  State<DetailGiftPage> createState() => _DetailGiftPageState();
}

class _DetailGiftPageState extends State<DetailGiftPage> {
  bool chack = false;
  bool cake = false;
  bool rose = false;
  bool bouquet = false;
  bool ring = false;
  bool chain = false;
  bool bag = false;
  bool car = false;
  bool home = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "image/Ic_toucharea.svg",
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          '선물하기',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    chack = !chack;
                    print(chack);
                  });
                },
                child: IconContainer(
                  image: "image/coffee.svg",
                  title: "커피",
                  description: "1 다이아",
                  decoration: chack
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    cake = !cake;
                  });
                  print(cake);
                },
                child: IconContainer(
                  image: "image/cake.svg",
                  decoration: cake
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  title: "케이크",
                  description: "5 다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    rose = !rose;
                  });
                },
                child: IconContainer(
                  image: "image/rose.svg",
                  decoration: rose
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                  title: "장미",
                  description: "10 다이아",
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(
              24,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    bouquet = !bouquet;
                  });
                },
                child: IconContainer(
                  decoration: bouquet
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  image: "image/bouquet.svg",
                  title: "꽃다발",
                  description: "50 다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ring = !ring;
                  });
                },
                child: IconContainer(
                  decoration: ring
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  image: "image/ring.svg",
                  title: "반지",
                  description: "50 다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    chain = !chain;
                  });
                },
                child: IconContainer(
                  decoration: chain
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  image: "image/heart-necklace.svg",
                  title: "목걸이",
                  description: "500 다이아",
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(
              24,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    bag = !bag;
                  });
                },
                child: IconContainer(
                  image: "image/handbag.svg",
                  decoration: bag
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                        ),
                  title: "가방",
                  description: "1,000\n 다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    car = !car;
                  });
                },
                child: IconContainer(
                  image: "image/car.svg",
                  decoration: car
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  title: "외제차",
                  description: "5,000\n 다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    home = !home;
                  });
                },
                child: IconContainer(
                  image: "image/home.svg",
                  decoration: home
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              3,
                              201,
                              195,
                            ),
                          ),
                        )
                      : BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            245,
                            245,
                            245,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                  title: "집",
                  description: "9,999\n 다이아",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 250,
          ),
          Container(
            width: width / 1.1,
            height: 60,
            decoration: chack ||
                    cake ||
                    rose ||
                    bouquet ||
                    ring ||
                    chain ||
                    bag ||
                    car ||
                    home
                ? BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      3,
                      201,
                      195,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  )
                : BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      177,
                      238,
                      236,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
            child: const Center(
              child: Text(
                '선물하기',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final String? image;
  final IconData? icon;
  final String title;
  final String description;
  final String? descriptiontwo;
  final Decoration? decoration;
  const IconContainer({
    super.key,
    this.icon,
    required this.title,
    required this.description,
    this.descriptiontwo,
    this.image,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: ScreenUtil().setHeight(
            64,
          ),
          width: ScreenUtil().setWidth(
            64,
          ),
          decoration: decoration,
          child: Stack(
            children: [
              image != null
                  ? Center(
                      child: SvgPicture.asset(
                        image!,
                      ),
                    )
                  : const Text(''),
            ],
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(
            6,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: ScreenUtil().setSp(
              13,
            ),
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
