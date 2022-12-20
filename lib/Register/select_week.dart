// ignore_for_file: prefer_const_constructors

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class SelectWeekPaid extends StatefulWidget {
  const SelectWeekPaid({Key? key}) : super(key: key);

  @override
  State<SelectWeekPaid> createState() => _SelectWeekPaidState();
}

class _SelectWeekPaidState extends State<SelectWeekPaid> {
  int? selectDay;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.049);
    double font10 = MediaQuery.of(context).size.width * 0.025;
    double font20 = MediaQuery.of(context).size.width * 0.049;
    double font25 = MediaQuery.of(context).size.width * 0.065;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(font20),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            SizedBox(
              child: Text(
                'Which day of the week to you get paid?',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.032,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                      itemCount: weekList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              selectDay = null;
                            });
                          },
                          onTap: () {
                            setState(() {
                              selectDay = index;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: font20 + font20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5)),
                            child: Center(
                                child: selectDay != index
                                    ? Text(
                                        weekList[index],
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: font20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4),
                                            child: Center(
                                              child: Text(
                                                weekList[index],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: font20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                          ),
                        );
                      }),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.5),
            selectDay == null
                ? Container()
                : SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: FormTextButton(
                      buttontitle: "Next",
                      buttontitlestyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      onpressed: () {
                        Navigator.pushNamed(context, AppRoutes.PaymentWeek);
                      },
                    ),
                  ),
            SizedBox(
              height: font20,
            )
          ]),
        ),
      )),
    );
  }

  List weekList = [
    "S",
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",
  ];
}
