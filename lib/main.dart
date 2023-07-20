import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mituks/bottomnavigation/root_tab.dart';
import 'package:flutter_mituks/loginpage.dart';

import 'package:flutter_mituks/splash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  //파이어베이스 초기화
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  //스플래시스크린
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1,
              ),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'mituks',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),

          home: const SplashScreen(),
          // home: StreamBuilder(
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return const RootTab();
          //     } else {
          //       return const LoginPage();
          //     }
          //   },
          //   stream: FirebaseAuth.instance.authStateChanges(),
          // ),
        );
      },
    );
  }
}
