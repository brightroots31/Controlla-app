// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, unnecessary_this, avoid_print, depend_on_referenced_packages, prefer_final_fields, prefer_const_constructors

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart' show DateFormat;

class PaymentWeek extends StatefulWidget {
  final index;
  const PaymentWeek({Key? key, this.index}) : super(key: key);

  @override
  State<PaymentWeek> createState() => _PaymentWeekState();
}

class _PaymentWeekState extends State<PaymentWeek> {
  String selectedDay = "Sunday";
  int number = 1;
  late DateTime nextweek;
  Widget _eventIcon = Transform.scale(
    scale: 0.45,
    alignment: Alignment.center,
    child: const CircleAvatar(
      backgroundColor: Colors.grey,
    ),
  );
  Widget _eventIcons = Transform.scale(
    scale: 0.70,
    alignment: Alignment.topLeft,
    child: Center(
      child:  CircleAvatar(
        backgroundColor: Constant.primaryColor,
      ),
    ),
  );
  @override
  initState() {
    super.initState();
    getdates(
      0,
    );
  }

  void getdates(
    int days,
  ) {
    var firstdayofmonth =
        DateTime(DateTime(1, 12, 2022).year, DateTime(1, 12, 2022).month, 1);

    DateTime firstsunday = firstdayofmonth.add(
      Duration(
        days:
            (DateTime.sunday - firstdayofmonth.weekday) % DateTime.daysPerWeek,
      ),
    );
    DateTime lastDay =
        firstsunday.add(Duration(days: 7 + days, hours: 23, minutes: 59));

    print("=======>$lastDay");

    for (int i = 0; i <= 31; i++) {
      _markedDateMap.addAll(
          DateTime(firstdayofmonth.year, firstdayofmonth.month,
              firstdayofmonth.day + i),
          [
            Event(
              date: DateTime(firstdayofmonth.year, firstdayofmonth.month,
                  firstdayofmonth.day + i),
              title: 'eve',
              icon: _eventIcon,
            )
          ]);
    }
    for (int i = 0; i <= 6; i++) {
      aaa.add(
          DateTime(lastDay.year, lastDay.month, lastDay.day + i).toString());
      _markedDateMap
          .addAll(DateTime(lastDay.year, lastDay.month, lastDay.day + i), [
        Event(
          date: DateTime(lastDay.year, lastDay.month, lastDay.day + i),
          title: 'eve',
          icon: _eventIcons,
        )
      ]);
    }
    if (widget.index == 0) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 21, hours: 23, minutes: 59));
        selectedDay = "Sunday";
      });
    }
    if (widget.index == 1) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 22, hours: 23, minutes: 59));
        selectedDay = "Monday";
      });
    }
    if (widget.index == 2) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 23, hours: 23, minutes: 59));
        selectedDay = "Tuesday";
      });
    }
    if (widget.index == 3) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 24, hours: 23, minutes: 59));
        selectedDay = "Wednesday";
      });
    }
    if (widget.index == 4) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 25, hours: 23, minutes: 59));
        selectedDay = "Thursday";
      });
    }
    if (widget.index == 5) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 26, hours: 23, minutes: 59));
        selectedDay = "Friday";
      });
    }
    if (widget.index == 6) {
      setState(() {
        nextweek =
            firstsunday.add(const Duration(days: 27, hours: 23, minutes: 59));
        selectedDay = "Saturday";
      });
    }
    _markedDateMap
        .addAll(DateTime(nextweek.year, nextweek.month, nextweek.day), [
      Event(
          date: DateTime(nextweek.year, nextweek.month, nextweek.day),
          title: 'eve',
          icon: Image.asset(
            Imagesforapp.dollar_sign,
          ))
    ]);
  }

  List aaa = [];
  String daterangetype = "Weekly";
  final DateTime _currentDate = DateTime(1, 12, 2022);
  DateTime _currentDate2 = DateTime(1, 12, 2022);
  String _currentMonth = DateFormat.yMMM().format(DateTime(1, 12, 2022));
  DateTime _targetDateTime = DateTime(1, 12, 2022);
  int id = 0;

  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  final DateRangePickerController _datePickerController =
      DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      isScrollable: false,
      showOnlyCurrentMonthDate: true,
      dayButtonColor: Colors.transparent,
      daysTextStyle: TextStyle(color: Colors.transparent),
      selectedDayButtonColor: Colors.transparent,
      selectedDayBorderColor: Colors.transparent,
      todayBorderColor: Colors.transparent,
      markedDateIconBorderColor: Colors.transparent,
      onDayPressed: (date, events) {
        events.isEmpty
            ? id == 4
                ? _markedDateMap.events.entries.length == 1
                    ? null
                    : _markedDateMap
                        .addAll(DateTime(date.year, date.month, date.day), [
                        Event(
                          date: DateTime(date.year, date.month, date.day),
                          title: 'eve',
                          icon: _eventIcon,
                        )
                      ])
                : null
            : null;

        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      weekdayTextStyle: const TextStyle(color: Constant.primaryColor),
      weekendTextStyle: const TextStyle(color: Colors.black),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 320.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      weekDayFormat: WeekdayFormat.narrow,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: DateTime.now().weekday == 6 || DateTime.now().weekday == 7
            ? Colors.red
            : Colors.black,
      ),
      markedDateShowIcon: true,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      todayButtonColor: Colors.transparent,
      selectedDayTextStyle: const TextStyle(
        color: Colors.black,
      ),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle: const TextStyle(
        fontSize: 16,
        color: Colors.transparent,
      ),
      inactiveDaysTextStyle: const TextStyle(
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
            "Which day of the...",
            style: TextStyle(color: Constant.primaryColor),
          ),
        ),
        body: ChangeNotifierProvider<RegisterProvider>(
          create: (BuildContext context) {
            return RegisterProvider();
          },
          child:
              Consumer<RegisterProvider>(builder: (context, provider, child) {
            return SafeArea(
              child: SingleChildScrollView(
                  child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Text(
                        'Which period of the week correspond to you payment?',
                        style: TextStyle(
                            color: Constant.primaryColor,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.045,
                    ),
                    _calendarCarouselNoHeader,
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _markedDateMap.clear();
                            });
                            getdates(
                              number,
                            );
                            setState(() {
                              print(number);
                              number--;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 7),
                            height: MediaQuery.of(context).size.height * 0.064,
                            width: MediaQuery.of(context).size.height * 0.064,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Constant.primaryColor)),
                            child: const Center(
                                child: Icon(
                              Icons.arrow_back_ios,
                              color: Constant.primaryColor,
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _markedDateMap.clear();
                            });
                            getdates(
                              number,
                            );
                            setState(() {
                              print(number);
                              if (widget.index == 0) {
                                number == 7 ? null : number++;
                              }
                              if (widget.index == 1) {
                                number == 8 ? null : number++;
                              }
                              if (widget.index == 2) {
                                number == 9 ? null : number++;
                              }
                              if (widget.index == 3) {
                                number == 10 ? null : number++;
                              }
                              if (widget.index == 4) {
                                number == 11 ? null : number++;
                              }
                              if (widget.index == 5) {
                                number == 12 ? null : number++;
                              }
                              if (widget.index == 6) {
                                number == 13 ? null : number++;
                              }
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            height: MediaQuery.of(context).size.height * 0.064,
                            width: MediaQuery.of(context).size.height * 0.064,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Constant.primaryColor)),
                            child: const Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: Constant.primaryColor,
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.055,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: FormTextButton(
                          buttontitle: "Next",
                          buttontitlestyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          onpressed: () {
                            provider.UpdateRegisterDataWeekly(selectedDay);
                            Navigator.pushReplacementNamed(
                                context, AppRoutes.CongratsScreen);
                          },
                        )),
                  ],
                ),
              )),
            );
          }),
        ));
  }
}
