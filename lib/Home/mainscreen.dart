// ignore_for_file: prefer_const_constructors

import 'package:controlla/Components/images.dart';
import 'package:controlla/Home/addsalesandawardscreen.dart';
import 'package:controlla/Home/homegoalscreen.dart';
import 'package:controlla/Home/homescreen.dart';
import 'package:controlla/Home/infoscreen/infoscreen.dart';
import 'package:controlla/Home/SettingScreen/settingscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    GoalScreen(),
    AddSalesandAward(),
    InfoScreen(),
    SettingScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: BottomNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.height * 0.070,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _selectedIndex == 0
                            ? Color(0xff1EC05D)
                            : Colors.transparent),
                    child: Center(
                      child: Image.asset(
                        Imagesforapp.home_icon,
                        color: _selectedIndex == 0 ? Colors.white : null,
                        height: MediaQuery.of(context).size.height * 0.050,
                      ),
                    )),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.height * 0.070,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _selectedIndex == 1
                            ? Color(0xff1EC05D)
                            : Colors.transparent),
                    child: Center(
                      child: Image.asset(
                        Imagesforapp.goal_icon,
                        color: _selectedIndex == 1 ? Colors.white : null,
                        height: MediaQuery.of(context).size.height * 0.050,
                      ),
                    )),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.height * 0.070,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _selectedIndex == 2
                            ? Color(0xff1EC05D)
                            : Colors.transparent),
                    child: Center(
                      child: Image.asset(
                        _selectedIndex == 2
                            ? Imagesforapp.selected_loctionicon
                            : Imagesforapp.unselected_locationicon,
                        height: MediaQuery.of(context).size.height * 0.050,
                      ),
                    )),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.height * 0.070,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _selectedIndex == 3
                            ? Color(0xff1EC05D)
                            : Colors.transparent),
                    child: Center(
                      child: Image.asset(
                        Imagesforapp.info_icon,
                        color: _selectedIndex == 3 ? Colors.white : null,
                        height: MediaQuery.of(context).size.height * 0.050,
                      ),
                    )),
                label: "Profile", 
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: MediaQuery.of(context).size.height * 0.070,
                    width: MediaQuery.of(context).size.height * 0.070,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _selectedIndex == 4
                            ? Color(0xff1EC05D)
                            : Colors.transparent),
                    child: Center(
                      child: Image.asset(
                        Imagesforapp.setting_icon,
                        color: _selectedIndex == 4 ? Colors.white : null,
                        height: MediaQuery.of(context).size.height * 0.050,
                      ),
                    )),
                label: "Profile",
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: MediaQuery.of(context).size.height * 0.050,
            onTap: _onItemTapped,
            elevation: 0),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
