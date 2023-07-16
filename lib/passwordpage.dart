import 'package:flutter/material.dart';
import 'package:flutter_mituks/loginpage.dart';
import 'package:flutter_mituks/pdauth/passwordone.dart';



class PassWordPage extends StatefulWidget {
  const PassWordPage({super.key});

  @override
  State<PassWordPage> createState() => _PassWordPageState();
}

class _PassWordPageState extends State<PassWordPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LoginPage(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.grey,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            '비밀번호 찾기',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '휴대폰 번호를 인증해주세요!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '휴대폰 번호',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: width / 1.1,
                child: TextFormField(
                  // controller: _controlleremail,
                  decoration: const InputDecoration(
                    //누를떄 컨테이너 모양
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    //누르기 전 컨테이너 모양
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    hintText: '- 없이 숫자만 입력',

                    hintStyle: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                  onChanged: ((value) {
                    setState(
                      () {
                        // userId = value;
                      },
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const PassWordOnePage(),
                    ),
                  );
                },
                child: Container(
                  width: width / 1.1,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      21,
                      213,
                      213,
                    ),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '인증문자 받기',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
