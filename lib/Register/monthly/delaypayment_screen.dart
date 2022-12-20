// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class DelayPaymentCheck extends StatefulWidget {
  const DelayPaymentCheck({Key? key}) : super(key: key);

  @override
  State<DelayPaymentCheck> createState() => _DelayPaymentCheckState();
}

class _DelayPaymentCheckState extends State<DelayPaymentCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    'Is there any delay on your payment checks?',
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.032,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildText("1 month of delay",
                                "It takes one month of delay for the company to send your check."),
                            SizedBox(height: 16),
                            delayCheck(Imagesforapp.delayCheck),
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            delayCheck(Imagesforapp.delayCheck),
                            SizedBox(height: 16),
                            delayCheck(Imagesforapp.delayCheckDollar),
                          ],
                        ),
                        // Column(children: [],),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildText("No delay",
                                "The company pays you right after the month finished."),
                            SizedBox(height: 16),
                            delayCheck(Imagesforapp.delayCheck),
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            delayCheck(Imagesforapp.delayCheck),
                            SizedBox(height: 16),
                            delayCheck(Imagesforapp.delayCheckDollar),
                          ],
                        ),
                        // Column(children: [],),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      )),
    );
  }

  Widget buildText(title, des) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 165,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(color: Constant.primaryColor, fontSize: 16)),
            SizedBox(height: 4),
            Text(des,
                style: TextStyle(color: Constant.primaryColor, fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Widget delayCheck(images) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Image(
          image: AssetImage(images),
          height: 100,
          width: 165,
        ));
  }
}
