import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/biweekly/sale_represent.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BiWeeklyDateSelectedCalander extends StatefulWidget {
  const BiWeeklyDateSelectedCalander({Key? key}) : super(key: key);

  @override
  State<BiWeeklyDateSelectedCalander> createState() =>
      _BiWeeklyDateSelectedCalanderState();
}

class _BiWeeklyDateSelectedCalanderState
    extends State<BiWeeklyDateSelectedCalander> {
  String daterangetype = "Weekly";
  int selectedate = 0;
  final DateTime _currentDate = DateTime(2022, 11, 25);
  final DateTime _currentDate2 = DateTime(2022, 11, 30);
  final DateTime _targetDateTime = DateTime(2022, 12, 2);
  int id = 0;
  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );
  String? selectDate;

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
      weekdayTextStyle: const TextStyle(color: Colors.black),
      // childAspectRatio: 1.2,
      daysHaveCircularBorder: false,
      showOnlyCurrentMonthDate: true,
      weekendTextStyle: const TextStyle(color: Colors.black),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
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
          selectedate = date.day;
        });
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

      todayTextStyle: const TextStyle(color: Colors.black),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SaleRepresent(
                                      selectdate: selectedate,
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
