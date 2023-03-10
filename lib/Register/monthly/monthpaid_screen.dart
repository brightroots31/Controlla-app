// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/monthly/delaypayment_screen.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, EventList, WeekdayFormat;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MonthPaidPage extends StatefulWidget {
  const MonthPaidPage({Key? key}) : super(key: key);

  @override
  State<MonthPaidPage> createState() => _MonthPaidPageState();
}

class _MonthPaidPageState extends State<MonthPaidPage> {
  String daterangetype = "Weekly";
  // DateTime _currentDate = DateTime(2022, 11, 25);
  // DateTime _currentDate2 = DateTime(2022, 11, 30);
  // DateTime _targetDateTime = DateTime(2022, 12, 2);

  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  DateTime _targetDateTime = DateTime.now();
  int id = 0;
  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );
  String? selectDate;
  String? selectDatebyuser;

  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      selectedDayButtonColor: Colors.transparent,
      selectedDayBorderColor: Constant.primaryColor,
      todayBorderColor: Constant.primaryColor,
      todayButtonColor: Colors.transparent,
      thisMonthDayBorderColor: Constant.primaryColor,
      weekDayFormat: WeekdayFormat.narrow,
      weekdayTextStyle: TextStyle(color: Colors.black),
      // childAspectRatio: 1.2,
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: true,
      weekendTextStyle: TextStyle(color: Colors.black),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 320.0,
      dayPadding: 0.01,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      showHeader: false,
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(fontSize: 16, color: Colors.transparent),
      inactiveDaysTextStyle: TextStyle(color: Colors.tealAccent, fontSize: 16),
      markedDateIconBorderColor: Constant.primaryColor,
      onDayPressed: (date, events) {
        selectDatebyuser = date.day.toString();
        print(date.day);
        selectDate = date.toString().substring(8, 10);
        _markedDateMap.events.clear();
        _markedDateMap.addAll(DateTime(date.year, date.month, date.day), [
          Event(
            date: DateTime(date.year, date.month, date.day),
            title: 'eve',
            icon: Transform.scale(
                scale: 1,
                child: CircleAvatar(
                    backgroundColor: Constant.primaryColor,
                    child: Text("$selectDate",
                        style: TextStyle(color: Colors.white)))),
          )
        ]);
        setState(() {});
      },

      todayTextStyle: TextStyle(color: Colors.black),
      markedDateShowIcon: true,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      onDayLongPressed: (DateTime date) {
        setState(() {
          _markedDateMap.events.clear();
          selectDate = null;
        });
        print('long pressed date $date');
      },
    );

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
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.060,
                ),
                SizedBox(
                  child: Text(
                    'Which day of the month do you get paid?',
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.032,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.060),
                _calendarCarouselNoHeader,
                Spacer(),
                selectDate != null
                    ? SizedBox(
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
                                    builder: (context) => DelayPaymentCheck(
                                          selectedDate: selectDatebyuser,
                                        )));
                          },
                        ),
                      )
                    : SizedBox(width: 0),
                const SizedBox(height: 20)
              ]),
            ),
          )),
    );
  }
}
