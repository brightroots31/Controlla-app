// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/biweekly/biweekly_calander.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class MonthWeekSelect extends StatefulWidget {
  const MonthWeekSelect({Key? key}) : super(key: key);

  @override
  State<MonthWeekSelect> createState() => _MonthWeekSelectState();
}

class _MonthWeekSelectState extends State<MonthWeekSelect> {
  int? selectDay;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.049);
    double font10 = MediaQuery.of(context).size.width * 0.025;
    double font20 = MediaQuery.of(context).size.width * 0.049;
    double font25 = MediaQuery.of(context).size.width * 0.065;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              color: Constant.primaryColor,
              height: 1,
            )),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Constant.primaryColor,
          ),
        ),
        title: Text(
          "How often do you...",
          style: TextStyle(color: Constant.primaryColor),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(font20),
          child: Column(children: [
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BiWeeklyCalander(index: selectDay,)));
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