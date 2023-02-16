// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:controlla/Components/images.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DelayPaymentCheck extends StatefulWidget {
  final selectedDate;

  const DelayPaymentCheck({Key? key, this.selectedDate}) : super(key: key);

  @override
  State<DelayPaymentCheck> createState() => _DelayPaymentCheckState();
}

class _DelayPaymentCheckState extends State<DelayPaymentCheck> {
  bool? onpresseds;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdetails();
  }

  void getdetails() async {
// onpressed
// Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool('onpressed');
    setState(() {
      onpresseds = repeat;
    });
  }

  int onpressed = 3;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 7);
    print(MediaQuery.of(context).size.width / 3);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: Constant.primaryColor,
              height: 1,
            )),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Constant.primaryColor,
          ),
        ),
        title: const Text(
          "How often do you...",
          style: TextStyle(color: Constant.primaryColor),
        ),
      ),
      body: ChangeNotifierProvider<RegisterProvider>(
        create: (context) {
          return RegisterProvider();
        },
        child: Consumer<RegisterProvider>(builder: (context, provider, child) {
          return SafeArea(
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
                            fontSize:
                                MediaQuery.of(context).size.height * 0.032,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  GestureDetector(
                    onTap: () async {
                      provider.UpdateRegisterDataMonthly(
                          widget.selectedDate, "1 month of delay");
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.CongratsScreen);
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('onpressed', true);
                      setState(() {
                        onpressed = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: onpresseds == true
                                ? Colors.black
                                : Colors.transparent,
                            width: 0.2),
                        boxShadow: onpresseds == true
                            ? [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(0, 1),
                                ),
                              ]
                            : [],
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () async {
                      provider.UpdateRegisterDataMonthly(
                          widget.selectedDate, "No delay");
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.CongratsScreen);
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('onpressed', false);
                      setState(() {
                        onpressed = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: onpresseds == false
                                ? Colors.black
                                : Colors.transparent,
                            width: 0.2),
                        boxShadow: onpresseds == false
                            ? [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(0, 1),
                                ),
                              ]
                            : [],
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ));
        }),
      ),
    );
  }

  Widget buildText(title, des) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width / 3,
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
          color: Constant.primaryColor,
          height: MediaQuery.of(context).size.height / 7,
          width: MediaQuery.of(context).size.width / 3,
        ));
  }
}
