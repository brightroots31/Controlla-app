import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: const BoxDecoration(
                color: Color(0xff1EC05D),
              ),
              child: Center(
                child: Text(
                  'Goal',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.030,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height * 0.070,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
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
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentindex = 0;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width /2.5,
                        height: MediaQuery.of(context).size.height * 0.070,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _currentindex == 0
                                ? Constant.primaryColor
                                : Colors.white),
                        child: Center(
                          child: Text(
                            'Goals',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: _currentindex == 0
                                    ? Colors.white
                                    : Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentindex = 1;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width /1.9,
                        height: MediaQuery.of(context).size.height * 0.070,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _currentindex == 1
                                ? Constant.primaryColor
                                : Colors.white),
                        child: Center(
                          child: Text(
                            'Performence',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: _currentindex == 1
                                    ? Colors.white
                                    : Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            _currentindex == 0 ? goaldata() : Container(),
            _currentindex == 1 ? perofrmencedata() : Container(),
            _currentindex == 2 ? awardsdata() : Container(),
          ],
        )),
      )),
    );
  }

  Widget goaldata() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 30,
          child: Text(
            'HOW MUCH DO YOU WANT TO SELL?',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.bold,
                color: Constant.primaryColor,),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        InnerShadow(
          blur: 4,
          color: Colors.black.withOpacity(0.2),
          offset: const Offset(2, 1),
          child: Container(
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height * 0.070,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Center(
                child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.050,
                ),
                Text(
                  'USD 130,000.00',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      fontWeight: FontWeight.w600),
                )
              ],
            )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        CircularPercentIndicator(
          animation: true,
          animationDuration: 700,
          radius: MediaQuery.of(context).size.height * 0.090,
          lineWidth: 13.0,
          percent: 0.25,
          center: Text(
            "25%",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.038,
                color: Constant.primaryColor,
                fontWeight: FontWeight.bold),
          ),
          progressColor: Constant.primaryColor,
          backgroundColor: Colors.white,
          circularStrokeCap: CircularStrokeCap.round,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.020,
            ),
            Container(
              width: MediaQuery.of(context).size.height * 0.040,
              height: MediaQuery.of(context).size.height * 0.040,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.030),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.020,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GOAL',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.017,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.290,
                  child: Text(
                    'USD 130,000.00',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Constant.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.height * 0.040,
              height: MediaQuery.of(context).size.height * 0.040,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.030),
                color: Constant.primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,   
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.020,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ON TRACK',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.017,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.290,
                  child: Text(
                    'USD 33,000.00',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                        color: Constant.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        Text(
          'MISSING 75%',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.017,
              color: Constant.primaryColor,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 30,
          child: Text(
            'HOW MUCH DO YOU WANT TO EARN?',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.bold,
                color: Constant.primaryColor,),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        InnerShadow(
          blur: 4,
          color: Colors.black.withOpacity(0.2),
          offset: const Offset(2, 1),
          child: Container(
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height * 0.070,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Center(
                child: Row(         
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.050,
                ),
                Text(
                  'USD 150,000.00',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      fontWeight: FontWeight.w600),
                )
              ],
            )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        CircularPercentIndicator(
          animation: true,
          animationDuration: 700,
          radius: MediaQuery.of(context).size.height * 0.090,
          lineWidth: 13.0,
          percent: 0.07,
          center: Text(
            "7%",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.038,
                color: Constant.primaryColor,
                fontWeight: FontWeight.bold),
          ),
          progressColor: Constant.primaryColor,
          backgroundColor: Colors.white,
          circularStrokeCap: CircularStrokeCap.round,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
      ],
    );
  }

  Widget perofrmencedata() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 30,
          child: Text(
            'Volume',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.bold,
                color: Constant.primaryColor,),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(0.2),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 30,
          child: Text(
            'Income',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.017,
                fontWeight: FontWeight.bold,
                color: Constant.primaryColor,),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(0.2),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.045,
        ),
        Text(
          'Ops!',
          style: TextStyle( 
              fontSize: MediaQuery.of(context).size.height * 0.019,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'You need to go premium to access this feature!',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.height * 0.070,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Constant.primaryColor,),
          child: Center(
            child: Text(
              'Learn more about',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.014,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  Widget awardsdata() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.030,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 30,
          child: Row(
            children: [
              Text(
                'Awards',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    fontWeight: FontWeight.bold,
                    color: Constant.primaryColor,),
              ),
              const Spacer(),
              Text(
                'Available',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    fontWeight: FontWeight.bold,
                    color: Constant.primaryColor,),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Text(
          'No results found',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              color: Colors.black.withOpacity(0.2),
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
