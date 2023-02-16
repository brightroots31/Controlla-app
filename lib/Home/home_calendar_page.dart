// ignore_for_file: prefer_const_constructors, avoid_print, no_leading_underscores_for_local_identifiers, unused_field, prefer_final_fields, unnecessary_this, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_is_empty

import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

class HomeCalendarPage extends StatefulWidget {
  const HomeCalendarPage({Key? key}) : super(key: key);

  @override
  State<HomeCalendarPage> createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<HomeCalendarPage> {
  String _currentMonth = DateFormat.yMMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();
  DateTime _currentDate = DateTime.now();
  String _currentMonthNo = DateTime.now().month.toString();

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  // MultipleMarkedDates _multipleDateMap = MultipleMarkedDates(
  //   markedDates: [],
  // );

  Widget _eventIconGreen = Transform.scale(
    scale: 0.25,
    alignment: Alignment.bottomLeft,
    child: CircleAvatar(
      backgroundColor: Constant.greenColor,
    ),
  );

  Widget _eventIconBlue = Transform.scale(
    scale: 0.25,
    alignment: Alignment.bottomRight,
    child: CircleAvatar(
      backgroundColor: Constant.blueColor,
    ),
  );

  fetchData() {
    totalDays = DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
    // _multipleDateMap.markedDates.clear();
    _markedDateMap.events.clear();
    for (int i = 1; i <= totalDays; i++) {
      if (ProfileDetails.userSelectWeekDay ==
          DateFormat('EEEE')
              .format(DateTime(DateTime.now().year, DateTime.now().month, i))) {
        // _multipleDateMap.addAll([
        //   MarkedDate(
        //       id: i,
        //       color: Colors.transparent,
        //       date: DateTime(DateTime.now().year, DateTime.now().month, i),
        //       textStyle: TextStyle(color: Colors.black)),
        // ]);

        _markedDateMap
            .addAll(DateTime(DateTime.now().year, DateTime.now().month, i), [
          Event(
            date: DateTime(DateTime.now().year, DateTime.now().month, i),
            title: 'eve',
            // id: i.toInt(),
            icon: _eventIconGreen,
            // dot: CircleAvatar(
            //   backgroundColor: Colors.red,
            //   foregroundColor: Colors.red,
            //   radius: 50,
            // ),
          ),
        ]);
        _markedDateMap
            .addAll(DateTime(DateTime.now().year, DateTime.now().month, 6), [
          Event(
            date: DateTime(DateTime.now().year, DateTime.now().month, 6),
            title: 'eve',
            icon: _eventIconBlue,
          ),
        ]);
        _markedDateMap
            .addAll(DateTime(DateTime.now().year, DateTime.now().month, 7), [
          Event(
            date: DateTime(DateTime.now().year, DateTime.now().month, 7),
            title: 'eve',
            icon: _eventIconBlue,
          ),
        ]);
        _markedDateMap
            .addAll(DateTime(DateTime.now().year, DateTime.now().month, 9), [
          Event(
            date: DateTime(DateTime.now().year, DateTime.now().month, 9),
            title: 'eve',
            icon: _eventIconBlue,
          ),
        ]);
        _markedDateMap
            .addAll(DateTime(DateTime.now().year, DateTime.now().month, 10), [
          Event(
            date: DateTime(DateTime.now().year, DateTime.now().month, 10),
            title: 'eve',
            icon: _eventIconBlue,

          ),
        ]);
      }
    }
    // print("_multipleDateMap::${_multipleDateMap.markedDates.length}");
  }

  var totalDays;

  fetchDays() {
    totalDays = DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
    fetchData();
  }

  @override
  void initState() {
    _markedDateMap;
    // _multipleDateMap;
    fetchDays();
    totalDays == null ? fetchDays() : fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _markedDateMap;
    // _multipleDateMap;
    fetchDays();
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      selectedDayButtonColor: Colors.transparent,
      // selectedDayButtonColor: Constant.primaryColor,
      // selectedDayBorderColor: Constant.primaryColor,
      selectedDayBorderColor: Colors.transparent,
      todayBorderColor: Constant.primaryColor,
      todayButtonColor: Colors.transparent,
      // markedDateCustomTextStyle: TextStyle(color: Colors.red),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      targetDateTime: _targetDateTime,
      scrollDirection: Axis.vertical,
      dayPadding: 0.0,
      markedDateIconMargin: 10,
      markedDateIconOffset: 0.1,
      // markedDateMoreShowTotal: true,
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: true,
      weekFormat: false,
      markedDateShowIcon: true,
      showHeader: false,
      shouldShowTransform: true,
      staticSixWeekFormat: true,
      showIconBehindDayText: true,
      markedDatesMap: _markedDateMap,
      // multipleMarkedDates: _multipleDateMap,
      // markedDateWidget: Text("data"),
      todayTextStyle: TextStyle(color: Colors.black),
      // thisMonthDayBorderColor: Constant.primaryColor,
      thisMonthDayBorderColor: Colors.grey.shade300,
      weekDayFormat: WeekdayFormat.narrow,
      weekdayTextStyle: TextStyle(color: Colors.transparent, fontSize: 0),
      weekendTextStyle: TextStyle(color: Colors.black),
      // height: 370.0,
      height: MediaQuery.of(context).size.height / 1.96,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      prevDaysTextStyle: TextStyle(fontSize: 16, color: Colors.transparent),
      inactiveDaysTextStyle: TextStyle(color: Colors.tealAccent, fontSize: 16),
      markedDateIconBorderColor: Constant.primaryColor,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMMM().format(_targetDateTime);
          _currentDate = DateTime.now();
          _currentMonthNo = date.month.toString();
        });
      },
    );

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    // _targetDateTime = DateTime(
                    //     _targetDateTime.year, _targetDateTime.month - 1);

                    _targetDateTime = DateTime.now();
                    _currentMonth = DateFormat.yMMMM().format(_targetDateTime);
                    _currentDate = DateTime.now();
                    _currentMonthNo = DateTime.now().month.toString();
                    // _currentMonth =
                    //     DateFormat.yMMM().format(_targetDateTime);
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      DateFormat.yMMMM().format(DateTime.now()),
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.keyboard_arrow_down_rounded, size: 30)
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text("S", key: Key("Sunday")),
                Text("M", key: Key("Monday")),
                Text("T", key: Key("Tuesday")),
                Text("W", key: Key("Wednesday")),
                Text("T", key: Key("Thursday")),
                Text("F", key: Key("Friday")),
                Text("S", key: Key("Saturday")),
              ]),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30),
                  Text(_currentMonth,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                ],
              ),
              _calendarCarouselNoHeader,
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Total sold: \$27$_currentMonthNo.900 USD",
                    style: TextStyle(color: Constant.blueColor),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text("Total received: \$12$_currentMonthNo.900 MXN",
                      style: TextStyle(color: Constant.greenColor)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
