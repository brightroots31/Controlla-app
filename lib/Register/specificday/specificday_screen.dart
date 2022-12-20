import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SpecificDayScreen extends StatefulWidget {
  const SpecificDayScreen({Key? key}) : super(key: key);

  @override
  State<SpecificDayScreen> createState() => _SpecificDayScreenState();
}

class _SpecificDayScreenState extends State<SpecificDayScreen> {
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
                Navigator.pushNamed(context, AppRoutes.FinalOftenScreen);
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
                            'Fixed running days',
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
                            'You will receive a payment after a X number of days once the sale is closed.',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset(Imagesforapp.runningdays_calander))
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            InkWell(
              onTap: (){
                //  Navigator.pushNamed(context, AppRoutes.BiWeeklyScreen);
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.primaryColor)),
                child: Padding(
                  padding:const EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Variable',
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
                            'The date you will receive payment is hard to predict.',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.016,
                              color: Constant.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Image.asset(Imagesforapp.variable_calander))
                  ]),
                ),
              ),
            ),
            
          ]),
        ),
      )),
    );
  }
}