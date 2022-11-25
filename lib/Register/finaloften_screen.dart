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
            SizedBox(
              child: Text(
                'How often do you get paid?',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.032,
                    fontWeight: FontWeight.w700),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.067,
            ),
            Container(
              width: MediaQuery.of(context).size.height * 0.208,
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
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    '7 DAYS',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.032,
                        color: Constant.primaryColor,
                        fontWeight: FontWeight.w600),
                  )
                ]),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.067,
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
                  Navigator.pushNamed(context, AppRoutes.CongratsScreen);
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
