import 'package:flutter/material.dart';
import 'package:flutter_mituks/profile/manprofile/manprofilepage.dart';


class ManSettingPage extends StatefulWidget {
  const ManSettingPage({super.key});

  @override
  State<ManSettingPage> createState() => _ManSettingPageState();
}

class _ManSettingPageState extends State<ManSettingPage> {
  bool _manbox = false;
  bool _womanbox = false;

  String _man = '남';
  String _woman = '여';
  //남자박스
  void genderWoman() {
    // gender = _woman;
    if (!_manbox) {
      _womanbox = !_womanbox;
    }
    if (_manbox) {
      _manbox = !_manbox;
    }
    if (!_womanbox) {
      _womanbox = !_womanbox;
    }
  }

  //여자박스
  void genderman() {
    // gender = _man;
    if (!_womanbox) {
      _manbox = !_manbox;
    }
    if (_womanbox) {
      _womanbox = !_womanbox;
    }
    if (!_manbox) {
      _manbox = !_manbox;
    }
  }

  Color color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        title: const Text(
          '내 프로필',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ManProfilePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: width / 4.3,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 72, 211, 200),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/coincoins.png",
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            '코인 설정',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      "images/person/Avataklraa.png",
                    ),
                  ),
                  Positioned(
                    top: 75,
                    left: 90,
                    child: Container(
                      height: 40,
                      width: width / 10.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 238, 236, 236),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DescriptionContainer(
                    title: "이름",
                    titledescription: "장미수",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DescriptionContainer(
                    title: "아이디",
                    titledescription: "chlwlsgur1",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DescriptionContainer(
                    title: "이메일",
                    titledescription: "chlwlsgur23@gmail.com",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Text(
                      "성별",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _manbox = !_manbox;
                            genderman();
                            print(_manbox);
                          });
                        },
                        child: Container(
                          height: 50,
                          width: width / 2.3,
                          decoration: BoxDecoration(
                            border: _manbox
                                ? Border.all(color: Colors.teal)
                                : Border.all(
                                    color: Colors.grey,
                                  ),
                            borderRadius: BorderRadius.circular(5),
                            color: _manbox
                                ? const Color.fromARGB(
                                    255,
                                    168,
                                    250,
                                    243,
                                  )
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              _man,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _womanbox = !_womanbox;
                            genderWoman();
                            print(_womanbox);
                          });
                        },
                        child: Container(
                          height: 50,
                          width: width / 2.3,
                          child: Center(
                            child: Text(
                              _woman,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: _womanbox
                                ? Border.all(color: Colors.teal)
                                : Border.all(
                                    color: Colors.grey,
                                  ),
                            borderRadius: BorderRadius.circular(5),
                            color: _womanbox
                                ? const Color.fromARGB(
                                    255,
                                    168,
                                    250,
                                    243,
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DescriptionContainer(
                    title: "생년월일",
                    titledescription: "19920-04-06",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DescriptionContainer(
                    title: "위치",
                    titledescription: "서울시 강남구",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '음성메세지',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '직업',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: Container(
                            height: 30,
                            width: width / 3.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/pen.png",
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    '카테고리 변경하기',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ContainerWidgt(
                      color: const Color.fromARGB(255, 232, 229, 229),
                      title: '승무원',
                      width: width / 7.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '언어',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ContainerWidgt(
                          color: const Color.fromARGB(255, 232, 229, 229),
                          title: '한국어',
                          width: width / 6.0,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '불어',
                        width: width / 6.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '영어',
                        width: width / 6.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '관심사',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ContainerWidgt(
                          color: const Color.fromARGB(255, 232, 229, 229),
                          title: '공부',
                          width: width / 6.0,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '게임',
                        width: width / 6.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '동물',
                        width: width / 6.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '음식',
                        width: width / 6.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '이상형',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ContainerWidgt(
                          color: const Color.fromARGB(255, 232, 229, 229),
                          title: '이상형',
                          width: width / 6.0,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '이상형',
                        width: width / 6.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ContainerWidgt(
                        color: const Color.fromARGB(255, 232, 229, 229),
                        title: '이상형',
                        width: width / 6.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWidgt extends StatelessWidget {
  final String? image;
  final String title;
  final double width;
  final VoidCallback? onTap;
  final Color? color;
  final Border? decoration;

  const ContainerWidgt({
    super.key,
    required this.title,
    required this.width,
    this.image,
    this.onTap,
    this.color,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: color,
            border: decoration),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //null 에러날떄
            image != null
                ? Image.asset(
                    image!,
                    width: 20,
                    height: 30,
                  )
                : const Text(''),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionContainer extends StatelessWidget {
  final String title;
  final String titledescription;

  const DescriptionContainer({
    super.key,
    required this.title,
    required this.titledescription,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: width / 1.1,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 236, 236),
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                titledescription,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
