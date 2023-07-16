import 'package:flutter/material.dart';

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
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey,
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
                  image: "images/coffee.png",
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
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
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
                  image: "images/cake.png",
                  decoration: cake
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
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
                  image: "images/rose.png",
                  decoration: rose
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  title: "장미",
                  description: "10 다이아",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
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
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  image: "images/bouquet.png",
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
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  image: "images/ring.png",
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
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  image: "images/game-icons_heart-necklace.png",
                  title: "목걸이",
                  description: "500 다이아",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
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
                  image: "images/noto-v1_handbag.png",
                  decoration: bag
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  title: "가방",
                  description: "1000\n다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    car = !car;
                  });
                },
                child: IconContainer(
                  image: "images/fluent-emoji-flat_racing-car.png",
                  decoration: car
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  title: "외제차",
                  description: "5000\n다이아",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    home = !home;
                  });
                },
                child: IconContainer(
                  image: "images/noto_house.png",
                  decoration: home
                      ? BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            230,
                            250,
                            249,
                          ),
                          borderRadius: BorderRadius.circular(30),
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
                          borderRadius: BorderRadius.circular(30),
                        ),
                  title: "집",
                  description: " 999\n다이아",
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
                    borderRadius: BorderRadius.circular(30),
                  )
                : BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      177,
                      238,
                      236,
                    ),
                    borderRadius: BorderRadius.circular(30),
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
          decoration: decoration,
          width: width / 7.0,
          height: 60,
          child: image != null
              ? Image.asset(
                  image!,
                  width: 20,
                  height: 30,
                )
              : const Text(''),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
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
