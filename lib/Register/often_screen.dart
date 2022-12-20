// ignore_for_file: prefer_final_fields, prefer_const_constructors, unnecessary_this, avoid_function_literals_in_foreach_calls, depend_on_referenced_packages, unused_field, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class OftenScreen extends StatefulWidget {
  const OftenScreen({Key? key}) : super(key: key);

  @override
  State<OftenScreen> createState() => _OftenScreenState();
}

class _OftenScreenState extends State<OftenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Text(
                'How often do you get paid?',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.SelectWeekPaid);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.primaryColor)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Weekly',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'You will receive a payment once a week',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset(Imagesforapp.weekly_calander))
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            InkWell(
              onTap: (){
                 Navigator.pushNamed(context, AppRoutes.BiWeeklyScreen);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.primaryColor)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Bi-Weekly',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'You will recieve payment once every other week',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset(Imagesforapp.biweekly_calander))
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            InkWell(
              onTap: (){
                 Navigator.pushNamed(context, AppRoutes.MonthpaidPage);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.primaryColor)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Monthly',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'You will recieve payment once a month.',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset(Imagesforapp.monthly_calander))
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.SpecificDayScreen);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.primaryColor)),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Specific Day',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'You will recieve payment in specific day in future',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Image.asset(Imagesforapp.specificday_calander))
                  ]),
                ),
              ),
            )
            
          ]),
        ),
      )),
    );
  }
}
