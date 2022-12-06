// ignore_for_file: prefer_final_fields, prefer_const_constructors, unnecessary_this, avoid_function_literals_in_foreach_calls, depend_on_referenced_packages, unused_field, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

class OftenScreen extends StatefulWidget {
  const OftenScreen({Key? key}) : super(key: key);

  @override
  State<OftenScreen> createState() => _OftenScreenState();
}

class _OftenScreenState extends State<OftenScreen> {
  String daterangetype = "Weekly";
  DateTime _currentDate = DateTime(2022, 11, 25);
  DateTime _currentDate2 = DateTime(2022, 11, 30);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2022, 12, 2));
  DateTime _targetDateTime = DateTime(2022, 12, 2);
  int id = 0;
  static Widget _eventIcon = Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius:const BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.transparent, width: 2.0),
      ),
      child: Image.asset(Imagesforapp.dollar_sign));
  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  final DateRangePickerController _datePickerController =
      DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      selectedDayButtonColor: Colors.transparent,
      selectedDayBorderColor: Colors.transparent,
      markedDateIconBorderColor: Colors.transparent,
      onDayPressed: (date, events) {
        // int daysOfWeek = DateTime.now().weekday;
        // print(daysOfWeek);

        // var lastdayofmonth =
        //     DateTime(DateTime.now().year, DateTime.now().month + 1, 0);
        // print(DateFormat("EEEE").format(lastdayofmonth));
        // print(DateFormat("EEEE").format(firstdayofmonth));
        // print(firstdayofmonth);

        // events.isEmpty
        //     ? id == 1
        //         ? _markedDateMap.events.entries.length == 7
        //             ? null
        // : _markedDateMap
        //     .addAll(DateTime(date.year, date.month, date.day), [
        //     Event(
        //       date: DateTime(date.year, date.month, date.day),
        //       title: 'eve',
        //       icon: _eventIcon,
        //     )
        //   ])
        //         : null
        //     : null;

        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      markedDateShowIcon: true,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

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
                    _calendarCarouselNoHeader
                    // SfDateRangePicker(
                    //   selectionShape: DateRangePickerSelectionShape.circle,
                    //   controller: _datePickerController,
                    //   rangeTextStyle: const TextStyle(color: Colors.white),
                    //   rangeSelectionColor: Constant.primaryColor,
                    //   endRangeSelectionColor: Constant.primaryColor,
                    //   startRangeSelectionColor: Constant.primaryColor,
                    //   headerHeight: 0,
                    //   todayHighlightColor: Colors.black.withOpacity(0.3),
                    //   monthViewSettings: DateRangePickerMonthViewSettings(
                    //       viewHeaderStyle: DateRangePickerViewHeaderStyle(
                    //           textStyle: TextStyle(
                    //               color: Colors.black.withOpacity(0.3),
                    //               fontWeight: FontWeight.w600))),
                    //   selectionMode: DateRangePickerSelectionMode.range,
                    // ),
                  ],
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.027,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.6,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 1;
                        daterangetype = "Weekly";
                        _markedDateMap.events.clear();
                        var firstdayofmonth = DateTime(
                            DateTime.now().year, DateTime.now().month, 1);
                        print(firstdayofmonth);
                        DateTime firstsunday = firstdayofmonth.add(
                          Duration(
                            days: (DateTime.sunday - firstdayofmonth.weekday) %
                                DateTime.daysPerWeek,
                          ),
                        );
                        print(firstsunday);

                        DateTime lastDay = firstsunday
                            .add(Duration(days: 7, hours: 23, minutes: 59));
                        print(lastDay);
                        DateTime nextday = lastDay
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextday);
                        DateTime nextdasy = nextday
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextdasy);
                        _markedDateMap.addAll(
                            DateTime(firstsunday.year, firstsunday.month,
                                firstsunday.day),
                            [
                              Event(
                                date: DateTime(firstsunday.year,
                                    firstsunday.month, firstsunday.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                        _markedDateMap.addAll(
                            DateTime(lastDay.year, lastDay.month, lastDay.day),
                            [
                              Event(
                                date: DateTime(
                                    lastDay.year, lastDay.month, lastDay.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                        _markedDateMap.addAll(
                            DateTime(nextday.year, nextday.month, nextday.day),
                            [
                              Event(
                                date: DateTime(
                                    nextday.year, nextday.month, nextday.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                        _markedDateMap.addAll(
                            DateTime(
                                nextdasy.year, nextdasy.month, nextdasy.day),
                            [
                              Event(
                                date: DateTime(nextdasy.year, nextdasy.month,
                                    nextdasy.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                      });
                    },
                  ),
                ),
                Text(
                  'Weekly',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      color: id == 1 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.011,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.6,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 2;
                        daterangetype = "Bi-Weekly";
                        _markedDateMap.events.clear();
                        var firstdayofmonth = DateTime(
                            DateTime.now().year, DateTime.now().month, 1);
                        print(firstdayofmonth);
                        DateTime firstsunday = firstdayofmonth.add(
                          Duration(
                            days: (DateTime.sunday - firstdayofmonth.weekday) %
                                DateTime.daysPerWeek,
                          ),
                        );
                        print(firstsunday);

                        DateTime lastDay = firstsunday
                            .add(Duration(days: 7, hours: 23, minutes: 59));
                        print(lastDay);
                        DateTime nextday = lastDay
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextday);
                        DateTime nextdasy = nextday
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextdasy);
                        _markedDateMap.addAll(
                            DateTime(firstsunday.year, firstsunday.month,
                                firstsunday.day),
                            [
                              Event(
                                date: DateTime(firstsunday.year,
                                    firstsunday.month, firstsunday.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);

                        _markedDateMap.addAll(
                            DateTime(nextday.year, nextday.month, nextday.day),
                            [
                              Event(
                                date: DateTime(
                                    nextday.year, nextday.month, nextday.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                      });
                    },
                  ),
                ),
                Text(
                  'Bi-Weekly',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      color: id == 2 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.011,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.6,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 3;
                        daterangetype = "Monthly";
                        _markedDateMap.events.clear();
                        var firstdayofmonth = DateTime(
                            DateTime.now().year, DateTime.now().month, 1);
                        print(firstdayofmonth);
                        DateTime firstsunday = firstdayofmonth.add(
                          Duration(
                            days: (DateTime.sunday - firstdayofmonth.weekday) %
                                DateTime.daysPerWeek,
                          ),
                        );
                        print(firstsunday);

                        DateTime lastDay = firstsunday
                            .add(Duration(days: 7, hours: 23, minutes: 59));
                        print(lastDay);
                        DateTime nextday = lastDay
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextday);
                        DateTime nextdasy = nextday
                            .add(Duration(days: 6, hours: 23, minutes: 59));
                        print(nextdasy);
                        _markedDateMap.addAll(
                            DateTime(firstdayofmonth.year,
                                firstdayofmonth.month, firstdayofmonth.day),
                            [
                              Event(
                                date: DateTime(firstdayofmonth.year,
                                    firstdayofmonth.month, firstdayofmonth.day),
                                title: 'eve',
                                icon: _eventIcon,
                              )
                            ]);
                      });
                    },
                  ),
                ),
                Text(
                  'Monthly',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      color: id == 3 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.011,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.025,
                ),
                Transform.scale(
                  scale: 1.6,
                  child: Radio(
                    activeColor: Constant.primaryColor,
                    value: 4,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        id = 4;
                        daterangetype = "Specific Day";
                        _markedDateMap.events.clear();
                      });
                    },
                  ),
                ),
                Text(
                  'Specific Day',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      color: id == 4 ? Constant.primaryColor : Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
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
                  if (id == 1 && _markedDateMap.events.entries.length == 7) {
                    Navigator.pushNamed(context, AppRoutes.StartDateScreen);
                  } else if (id == 2 &&
                      _markedDateMap.events.entries.length == 15) {
                    Navigator.pushNamed(context, AppRoutes.StartDateScreen);
                  } else if (id == 3 &&
                      _markedDateMap.events.entries.length == 30) {
                    Navigator.pushNamed(context, AppRoutes.StartDateScreen);
                  } else if (id == 4 &&
                      _markedDateMap.events.entries.length == 1) {
                    Navigator.pushNamed(context, AppRoutes.StartDateScreen);
                  } else {
                    Fluttertoast.showToast(msg: "Please select specifics days");
                  }
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
