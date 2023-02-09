import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class BiWeeklyScreen extends StatefulWidget {
  const BiWeeklyScreen({Key? key}) : super(key: key);

  @override
  State<BiWeeklyScreen> createState() => _BiWeeklyScreenState();
}

class _BiWeeklyScreenState extends State<BiWeeklyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
            "Every other week...",
            style: TextStyle(color: Constant.primaryColor),
          ),
        ),
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
                  'Every other week or twice a month?',
                  style: TextStyle(
                      color: Constant.primaryColor,
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.MonthWeekSelect);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'Every other week',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will receive a payment every other a week,same weekday.',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(Imagesforapp.everyweek_calander,color: Constant.primaryColor,))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.BiweeklyDateSelectedCalander);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'Twice a month',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will recieve payment two times a month. Ex: Every 1st and 15th of month.',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(Imagesforapp.twiceamonth_calander,color: Constant.primaryColor,))
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
