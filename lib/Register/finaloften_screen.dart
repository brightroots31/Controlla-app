import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FinalOftenScreen extends StatefulWidget {
  const FinalOftenScreen({Key? key}) : super(key: key);

  @override
  State<FinalOftenScreen> createState() => _FinalOftenScreenState();
}

class _FinalOftenScreenState extends State<FinalOftenScreen> {
  String daterangetype = "Weekly";
  int count = 1;
  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double font10 = MediaQuery.of(context).size.width * 0.025;
    double font20 = MediaQuery.of(context).size.width * 0.049;
    double font25 = MediaQuery.of(context).size.width * 0.065;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  // 'How often do you get paid?',
                  'How many days after the sale do you get paid?',
                  style: TextStyle(
                      color: Constant.primaryColor,
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.grey.withOpacity(0.1),
                color: Colors.white.withOpacity(0.6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              // color: Colors.white10,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: font10, horizontal: font10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: font10),
                                  GestureDetector(
                                    onTap: () {
                                      count != 7 ? increment() : null;
                                      // increment();
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: font25,
                                    ),
                                  ),
                                  SizedBox(width: font10),
                                  Text(
                                      count < 10 ? "0$count" : count.toString(),
                                      style: TextStyle(
                                          color: Constant.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: font20)),
                                  SizedBox(width: font10),
                                  GestureDetector(
                                    onTap: () {
                                      count != 1 ? decrement() : null;
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      // size: MediaQuery.of(context).size.width*0.065,
                                      size: font25,
                                    ),
                                  ),
                                  SizedBox(width: font10),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: font25 + font10),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Text("days",
                                style: TextStyle(
                                    color: Constant.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: font20 + 2)),
                          )
                        ],
                      ))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: FormTextButton(
                buttontitle: "Next",
                buttontitlestyle: TextStyle(
                    color: Colors.white,
                    fontSize: font20,
                    fontWeight: FontWeight.w500),
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.CongratsScreen);
                  // Navigator.pushNamed(context, AppRoutes.CongratsScreen);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
      )),
    );
  }
}
