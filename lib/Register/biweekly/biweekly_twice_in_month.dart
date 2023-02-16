// ignore_for_file: prefer_final_fields, no_leading_underscores_for_local_identifiers

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/biweekly/sale_represent.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BiweeklyTwiceInMonth extends StatefulWidget {
  const BiweeklyTwiceInMonth({Key? key}) : super(key: key);

  @override
  State<BiweeklyTwiceInMonth> createState() => _BiweeklyTwiceInMonthState();
}

class _BiweeklyTwiceInMonthState extends State<BiweeklyTwiceInMonth> {
  int selecteDate = 0;
  final DateTime _currentDate = DateTime.now();
  final DateTime _currentDate2 = DateTime.now();
  final DateTime _targetDateTime = DateTime.now();
  int id = 0;
  String? selectDate;
  String? secondDate;

  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  MultipleMarkedDates _multipleDateMap = MultipleMarkedDates(
    markedDates: [],
  );

  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      selectedDayButtonColor: Colors.transparent,
      // selectedDayButtonColor: Colors.grey,

      selectedDayBorderColor: Constant.primaryColor,
      // selectedDayBorderColor: Colors.black,

      todayBorderColor: Constant.primaryColor,
      // todayBorderColor: Colors.white,

      // todayButtonColor: Colors.white,
      todayButtonColor: Colors.transparent,

      todayTextStyle: const TextStyle(color: Colors.black),
      thisMonthDayBorderColor: Constant.primaryColor,
      weekDayFormat: WeekdayFormat.narrow,
      weekdayTextStyle: const TextStyle(color: Colors.black),
      multipleMarkedDates: _multipleDateMap,
      // childAspectRatio: 1.2,
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: true,
      weekendTextStyle: const TextStyle(color: Colors.black),
      weekFormat: false,
      // markedDatesMap: _markedDateMap,
      height: 320.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      showHeader: false,
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      prevDaysTextStyle:
          const TextStyle(fontSize: 16, color: Colors.transparent),
      inactiveDaysTextStyle:
          const TextStyle(color: Colors.tealAccent, fontSize: 16),
      markedDateIconBorderColor: Constant.primaryColor,
      onDayPressed: (date, events) {
        setState(() {
          selecteDate = date.day;
          secondDate = (DateTime(date.year, date.month, date.day + 15)
              .toString()
              .substring(8, 10));
        });
        selectDate = date.toString().substring(8, 10);

        _markedDateMap.events.clear();
        _multipleDateMap.markedDates.clear();
        // print((DateTime(date.year, date.month + 1, 0).day).toInt());
        // ((DateTime(date.year, date.month + 1, 0).day).toInt() - 15) >= selecteDate?

        _multipleDateMap.addAll([
          MarkedDate(
              color: Colors.grey,
              date: DateTime(date.year, date.month, date.day),
              textStyle: TextStyle(color: Colors.black)),
          MarkedDate(
              color: Colors.grey,
              date: DateTime(date.year, date.month, date.day + 15),
              textStyle: TextStyle(color: Colors.black)),
        ]);
        // : null;

        // _markedDateMap.addAll(DateTime(date.year, date.month, date.day), [
        //   Event(
        //     date: DateTime(date.year, date.month, date.day),
        //     title: 'eve',
        //     icon: Transform.scale(
        //         scale: 1,
        //         child: CircleAvatar(
        //             backgroundColor: Constant.primaryColor,
        //             child: Text("$selectDate",
        //                 style: TextStyle(color: Colors.white)))),
        //   )
        // ]);
        setState(() {});
      },
      markedDateShowIcon: true,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      onDayLongPressed: (DateTime date) {
        setState(() {
          _markedDateMap.events.clear();
          selectDate = null;
          secondDate = null;
          _multipleDateMap.markedDates.clear();
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
                'Which two days of the month do you get paid?',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.032,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.060),
            _calendarCarouselNoHeader,
            const Spacer(),
            selectDate != null
                ? SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: FormTextButton(
                      buttontitle: "Next",
                      buttontitlestyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      onpressed: () {
                        print(
                            "selecteDate1:$selecteDate    ${selecteDate + 15}");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SaleRepresent(
                                      selectdate: "$selecteDate - $secondDate",
                                    )));
                        // Navigator.pushNamed(
                        //     context, AppRoutes.DelayPaymentCheck);
                      },
                    ),
                  )
                : const SizedBox(width: 0),
            const SizedBox(height: 20)
          ]),
        ),
      )),
    );
  }
}
