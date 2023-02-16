// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:controlla/Home/SettingScreen/accountsettingscreen.dart';
import 'package:controlla/Home/SettingScreen/premiumversion.dart';
import 'package:controlla/Home/SettingScreen/termsandconditionscreen.dart';
import 'package:controlla/Home/home_calendar_page.dart';
import 'package:controlla/Home/infoscreen/hoteldetail.dart';
import 'package:controlla/Home/infoscreen/hotelscreen.dart';
import 'package:controlla/Home/infoscreen/infoscreen.dart';
import 'package:controlla/Home/infoscreen/infosettingscreen.dart';
import 'package:controlla/Home/mainscreen.dart';
import 'package:controlla/Login/loginscreen.dart';
import 'package:controlla/Register/biweekly/biweekly_calander.dart';
import 'package:controlla/Register/biweekly/biweekly_dateselectcalander.dart';
import 'package:controlla/Register/biweekly/biweekly_twice_in_month.dart';
import 'package:controlla/Register/biweekly/biweekly_screen.dart';
import 'package:controlla/Register/biweekly/sale_represent.dart';
import 'package:controlla/Register/congrats_for_sellscreen.dart';
import 'package:controlla/Register/congrats_screen.dart';
import 'package:controlla/Register/finaloften_screen.dart';
import 'package:controlla/Register/getpaid_screen.dart';
import 'package:controlla/Register/monthly/delaypayment_screen.dart';
import 'package:controlla/Register/monthly/month_week_select.dart';
import 'package:controlla/Register/monthly/monthpaid_screen.dart';
import 'package:controlla/Register/often_screen.dart';
import 'package:controlla/Register/payment_week.dart';
import 'package:controlla/Register/postion_screen.dart';
import 'package:controlla/Register/registerscreen.dart';
import 'package:controlla/Register/reset_password.dart';
import 'package:controlla/Register/select_week.dart';
import 'package:controlla/Register/specificday/specificday_screen.dart';
import 'package:controlla/Register/startdate_screen.dart';
import 'package:controlla/main.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String SplashPage = "splash page";
  static const String LoginPage = "login page";
  static const String RegisterPage = "Register page";
  static const String OftenScreen = "Often page";
  static const String StartDateScreen = "Start date";
  static const String FinalOftenScreen = "Final Often";
  static const String CongratsScreen = "Congrats";
  static const String PostionScreen = "Postion";
  static const String GetPaidScreen = "GetPaid";
  static const String SellCongratsScreen = "SellCongrats";
  static const String MainScreen = "MainScreen";
  static const String AccountSettingScreen = "AccountSetting";
  static const String TermandCondition = "Termand Condition";
  static const String PremimumVersionScreen = "Premimum Version";
  static const String HotelDetailsScreen = "Hotel Details";
  static const String HotelScreen = "Hotel Screen";
  static const String InfoScreen = "Info Screen";
  static const String InfoSettingScreen = "Info Setting";
  static const String PaymentWeek ="Payment week";
  static const String SelectWeekPaid = "Select week";
  static const String BiWeeklyScreen = "Biweekly screen";
  static const String BiWeeklyCalander= "Biweekly calander";
  static const String SpecificDayScreen= "Specific screen";
   static const String MonthpaidPage= "Monthpaid page";
   static const String DelayPaymentCheck= "delay ";
   static const String BiweeklyDateSelectedCalander= "BiweeklyDateCalander ";
   static const String SaleRepresent = "Sale represent";
   static const String MonthWeekSelect="MonthWeekSelect";
   static const String ResetPassword="ResetPassword";
   static const String BiweeklyTwiceInMonth="BiweeklyTwiceInMonth";
   static const String HomeCalendarPage="HomeCalendarPage";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.SplashPage: (context) => const SlplashScreen(),
  AppRoutes.LoginPage: (context) => const LoginScreen(),
  AppRoutes.RegisterPage: (context) => const RegisterScreen(),
  AppRoutes.OftenScreen: (context) => const OftenScreen(),
  AppRoutes.StartDateScreen: (context) => const StartDateScreen(),
  AppRoutes.FinalOftenScreen: (context) => const FinalOftenScreen(),
  AppRoutes.CongratsScreen: (context) => const CongratsScreen(),
  AppRoutes.PostionScreen: (context) => const PostionScreen(),
  AppRoutes.GetPaidScreen: (context) => const GetPaidScreen(),
  AppRoutes.SellCongratsScreen: (context) => const SellCongratsScreen(),
  AppRoutes.MainScreen: (context) => const MainScreen(),
  AppRoutes.AccountSettingScreen: (context) => const AccountSettingScreen(),
  AppRoutes.TermandCondition: (context) => const TermandCondition(),
  AppRoutes.PremimumVersionScreen: (context) => const PremimumVersionScreen(),
  AppRoutes.HotelDetailsScreen: (context) => const HotelDetailsScreen(),
  AppRoutes.HotelScreen: (context) => const HotelScreen(),
  AppRoutes.InfoScreen: (context) => const InfoScreen(),
  AppRoutes.InfoSettingScreen: (context) => const InfoSettingScreen(),
  AppRoutes.PaymentWeek: (context) => const PaymentWeek(),
  AppRoutes.SelectWeekPaid: (context)=> const SelectWeekPaid(),
  AppRoutes.BiWeeklyScreen:(context) => const BiWeeklyScreen(),
  AppRoutes.BiWeeklyCalander:(context) => const BiWeeklyCalander(),
  AppRoutes.SpecificDayScreen:(context)=> const SpecificDayScreen(),
  AppRoutes.MonthpaidPage:(context)=> const MonthPaidPage(),
  AppRoutes.DelayPaymentCheck:(context)=> const DelayPaymentCheck(),
  AppRoutes.BiweeklyDateSelectedCalander:(context)=> const BiWeeklyDateSelectedCalander(),
  AppRoutes.SaleRepresent:(context)=> const SaleRepresent(),
  AppRoutes.MonthWeekSelect:(context)=> const MonthWeekSelect(),
  AppRoutes.ResetPassword:(context)=> const ResetPassword(),
  AppRoutes.BiweeklyTwiceInMonth:(context)=> const BiweeklyTwiceInMonth(),
  AppRoutes.HomeCalendarPage:(context)=> const HomeCalendarPage(),
};
