// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: const SlplashScreen(),
    );
  }
}

class SlplashScreen extends StatefulWidget {
  const SlplashScreen({Key? key}) : super(key: key);

  @override
  State<SlplashScreen> createState() => _SlplashScreenState();
}

class _SlplashScreenState extends State<SlplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushReplacementNamed(context, AppRoutes.LoginPage);
  //   });
  // }

  bool isLogin = false;

  getLoggedInState() async {
    await LocalDataSaver.getUserLogData().then((value) {
      setState(() {
        value == null ? LocalDataSaver.saveUserLogData(false) : isLogin = value;
        decideScreen();
      });
    });
  }

  void decideScreen() async {
    if (isLogin == false) {
      Navigator.of(context).popUntil((route) => route.isFirst);

      Future.delayed(Duration(seconds: 2)).then((value) {
        Navigator.pushReplacementNamed(context, AppRoutes.LoginPage);
      });

    } else {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Future.delayed(Duration(seconds: 2)).then((value) {
        Navigator.pushReplacementNamed(context, AppRoutes.MainScreen);
      });
    }
  }

  @override
  initState() {
    getLoggedInState();
    fetchDataSF();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        Imagesforapp.controlla_logo,
        color: Constant.primaryColor,
        height: MediaQuery.of(context).size.height * 0.180,
        width: MediaQuery.of(context).size.width - 40,
      )),
    );
  }
}
