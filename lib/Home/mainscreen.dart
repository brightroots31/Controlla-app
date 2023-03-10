// ignore_for_file: prefer_const_constructors

import 'package:controlla/Components/images.dart';
import 'package:controlla/Home/addsalesandawardscreen.dart';
import 'package:controlla/Home/home_calendar_page.dart';
import 'package:controlla/Home/homegoalscreen.dart';
import 'package:controlla/Home/infoscreen/infoscreen.dart';
import 'package:controlla/Home/SettingScreen/settingscreen.dart';
import 'package:controlla/provider/profile_service.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // HomeScreen(),
    HomeCalendarPage(),
    GoalScreen(),
    AddSalesandAward(),
    // HomeCalendarPage(),
    InfoScreen(),
    SettingScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  initState() {
    super.initState();
    ProfileFirebaseService.getInstance().fetchCustomerUserLoginData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 1))
            ],
          ),
          child: BottomNavigationBar(
              selectedFontSize: 15,
              unselectedFontSize: 15,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              backgroundColor: Colors.transparent,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Center(
                        child: Image.asset(Imagesforapp.home_icon,
                            color: _selectedIndex == 0
                                ? Constant.primaryColor
                                : Colors.grey,
                            height:
                                MediaQuery.of(context).size.height * 0.040)),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Center(
                        child: Image.asset(Imagesforapp.goal_icon,
                            color: _selectedIndex == 1
                                ? Constant.primaryColor
                                : Colors.grey,
                            height:
                                MediaQuery.of(context).size.height * 0.040)),
                    label: "Search"),
                // BottomNavigationBarItem(
                //     icon: InkWell(
                //       onTap: (){
                //         Navigator.pushNamed(context, AppRoutes.HowMuchSellPage);
                //       },
                //       child: Container(
                //           height: MediaQuery.of(context).size.height * 0.070,
                //           width: MediaQuery.of(context).size.height * 0.070,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(25),
                //               color: _selectedIndex == 2
                //                   ? Colors.blue
                //                   : Colors.grey),
                //           child: Center(
                //               child: Icon(Icons.add,
                //                   color: Colors.white,
                //                   size: MediaQuery.of(context).size.height *
                //                       0.040))),
                //     ),
                //     label: ""),
                BottomNavigationBarItem(
                    icon: Container(
                        height: MediaQuery.of(context).size.height * 0.070,
                        width: MediaQuery.of(context).size.height * 0.070,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: _selectedIndex == 2
                                ? Colors.blue
                                : Colors.grey),
                        child: Center(
                            child: Icon(Icons.add,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height *
                                    0.040))),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Center(
                        child: Image.asset(Imagesforapp.info_icon,
                            color: _selectedIndex == 3
                                ? Constant.primaryColor
                                : Colors.grey,
                            height:
                                MediaQuery.of(context).size.height * 0.040)),
                    label: "Info"),
                BottomNavigationBarItem(
                    icon: Center(
                        child: Image.asset(Imagesforapp.setting_icon,
                            color: _selectedIndex == 4
                                ? Constant.primaryColor
                                : Colors.grey,
                            height:
                                MediaQuery.of(context).size.height * 0.040)),
                    label: "Settings")
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: MediaQuery.of(context).size.height * 0.040,
              onTap: _onItemTapped,
              elevation: 0)),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}
