import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class StartDateScreen extends StatefulWidget {
  const StartDateScreen({Key? key}) : super(key: key);

  @override
  State<StartDateScreen> createState() => _StartDateScreenState();
}

class _StartDateScreenState extends State<StartDateScreen> {
  String daterangetype = "Weekly";
  int id = 0;
  final DateRangePickerController _datePickerController =
      DateRangePickerController();
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
            Text(
              'Which day does your work \nstart?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Constant.primaryColor,
                fontSize: MediaQuery.of(context).size.height * 0.032,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 120,
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
                  child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Text(
                      daterangetype,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          color: const Color(0xff000000).withOpacity(0.5),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.013,
                    ),
                    SfDateRangePicker(
                      selectionShape: DateRangePickerSelectionShape.circle,
                      controller: _datePickerController,
                      rangeTextStyle: const TextStyle(color: Colors.white),
                      rangeSelectionColor: Constant.primaryColor,
                      endRangeSelectionColor: Constant.primaryColor,
                      startRangeSelectionColor: Constant.primaryColor,
                      headerHeight: 0,
                      todayHighlightColor: Colors.black.withOpacity(0.3),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontWeight: FontWeight.w600))),
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ],
                ),
              )),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 1;
                        daterangetype = "Weekly";
                      });
                    },
                  ),
                ),
                Text(
                  'Sunday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 1 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 2;
                      });
                    },
                  ),
                ),
                Text(
                  'Tuesday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 2 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.055,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 3;
                      });
                    },
                  ),
                ),
                Text(
                  'Monday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 3 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 4,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 4;
                      });
                    },
                  ),
                ),
                Text(
                  'Wednesday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 4 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 5,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 5;
                      });
                    },
                  ),
                ),
                Text(
                  'Thursday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 5 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.0,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 6,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 6;
                      });
                    },
                  ),
                ),
                Text(
                  'Saturday',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      color: id == 6 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.055,
                ),
              ],
            ),
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.025,
              ),
              Transform.scale(
                scale: 1.0,
                child: Radio(
                  activeColor: Constant.primaryColor,
                  value: 7,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 7;
                    });
                  },
                ),
              ),
              Text(
                'Friday',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    color: id == 7 ? Constant.primaryColor : Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.027,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: FormTextButton(
                buttontitle: "Next",
                buttontitlestyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.024,
                    fontWeight: FontWeight.w500),
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.FinalOftenScreen);
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
