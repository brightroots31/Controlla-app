// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, unnecessary_this, avoid_print

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart' show DateFormat;

class PaymentWeek extends StatefulWidget {
  const PaymentWeek({Key? key}) : super(key: key);

  @override
  State<PaymentWeek> createState() => _PaymentWeekState();
}

class _PaymentWeekState extends State<PaymentWeek> {
  Widget _eventIcon = Transform.scale(
    scale: 0.6,
    child: CircleAvatar(
      backgroundColor: Colors.grey,
    ),
  );
  Widget _eventIcons = Transform.scale(
    scale: 0.8,
    child: CircleAvatar(
      backgroundColor: Constant.primaryColor,
    ),
  );
  @override
  initState() {
    super.initState();
    var firstdayofmonth =
        DateTime(DateTime.now().year, DateTime.now().month, 1);

    DateTime firstsunday = firstdayofmonth.add(
      Duration(
        days:
            (DateTime.sunday - firstdayofmonth.weekday) % DateTime.daysPerWeek,
      ),
    );
    DateTime lastDay =
        firstsunday.add(Duration(days: 7, hours: 23, minutes: 59));
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

    for (int i = 0; i <= 31; i++) {
      if (aaa[0].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[1].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[2].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[3].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[4].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[5].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString() ||
          aaa[6].toString() ==
              DateTime(firstdayofmonth.year, firstdayofmonth.month,
                      firstdayofmonth.day + i)
                  .toString()) {
        continue;
      } else if (DateTime(DateTime.now().year, DateTime.now().month,
                  DateTime.now().day)
              .toString() ==
          DateTime(firstdayofmonth.year, firstdayofmonth.month,
                  firstdayofmonth.day + i)
              .toString()) {
        _markedDateMap.addAll(
            DateTime(firstdayofmonth.year, firstdayofmonth.month,
                firstdayofmonth.day + i),
            [
              Event(
                date: DateTime(firstdayofmonth.year, firstdayofmonth.month,
                    firstdayofmonth.day + i),
                title: 'eve',
                icon: Image.asset(Imagesforapp.dollar_sign)
              )
            ]);
      } else {
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
    }
  }

  List aaa = [];
  String daterangetype = "Weekly";
  final DateTime _currentDate = DateTime(2022, 11, 25);
  DateTime _currentDate2 = DateTime(2022, 11, 30);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2022, 12, 2));
  DateTime _targetDateTime = DateTime(2022, 12, 2);
  int id = 0;
  // static final Widget _eventIcon = Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       // borderRadius:const BorderRadius.all(Radius.circular(1000)),
  //       border: Border.all(color: Colors.transparent, width: 2.0),
  //     ),
  //     child: Transform.scale(
  //         scale: 1.7,
  //         child: Image.asset(
  //           Imagesforapp.dollar_sign,
  //         )));
  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  final DateRangePickerController _datePickerController =
      DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
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
      showOnlyCurrentMonthDate: false,
      weekdayTextStyle: TextStyle(color: Constant.primaryColor),
      weekendTextStyle: TextStyle(color: Colors.black),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 320.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      weekDayFormat: WeekdayFormat.narrow,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: Text(
                  'Which period of the week correspond to you payment?',
                  style: TextStyle(
                      color: Constant.primaryColor,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
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
                  Container(
                    padding: const EdgeInsets.only(left: 7),
                    height: MediaQuery.of(context).size.height * 0.064,
                    width: MediaQuery.of(context).size.height * 0.064,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Constant.primaryColor)),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Constant.primaryColor,
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 6),
                    height: MediaQuery.of(context).size.height * 0.064,
                    width: MediaQuery.of(context).size.height * 0.064,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Constant.primaryColor)),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      color: Constant.primaryColor,
                    )),
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
                       Navigator.pushNamed(context, AppRoutes.CongratsScreen);
                    },
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
