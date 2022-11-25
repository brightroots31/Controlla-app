import 'dart:async';

import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/routes.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(
  //   enabled: true,
  //   tools: [...DevicePreview.defaultTools],
  //   builder: (context) => MyApp(),
  // ));
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
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.LoginPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        Imagesforapp.controlla_logo,
        height: MediaQuery.of(context).size.height * 0.180,
        width: MediaQuery.of(context).size.width - 40,
      )),
    );
  }
}
