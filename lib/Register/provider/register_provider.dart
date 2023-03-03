// ignore_for_file: body_might_complete_normally_nullable, non_constant_identifier_names

import 'package:controlla/Register/service/register_firebaseservice.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  Future? registerData(emailaddress, password, context, name) {
    notifyListeners();
    RegisterFirebaseService.getInstance()
        .registerWithEmail(emailaddress, password, context, name);
    notifyListeners();

    return null;
  }

  Future? UpdateRegisterDataWeekly(selectedDay) {
    notifyListeners();
    RegisterFirebaseService.getInstance().updateRegisterDataWeekly(selectedDay);
    notifyListeners();
  }

  Future? UpdateRegisterDataBiweeklyEveryOtherWeek(selectedDay) {
    notifyListeners();
    RegisterFirebaseService.getInstance()
        .updateRegisterBiWeeklyEveryWeek(selectedDay);
    notifyListeners();
  }

  Future? UpdateRegisterDataBiweeklyTwiceAMonth(selectedDate, periodOfSale) {
    notifyListeners();
    RegisterFirebaseService.getInstance()
        .updateRegisterBiWeeklyTwiceAMonth(selectedDate, periodOfSale);
    notifyListeners();
  }

  Future? UpdateRegisterDataMonthly(selectedDate, delayPaymentCheck) {
    notifyListeners();
    RegisterFirebaseService.getInstance()
        .updateRegisterMonthlyData(selectedDate, delayPaymentCheck);
    notifyListeners();
  }

  Future? UpdateRegisterDataSpecific(totalDays) {
    notifyListeners();
    RegisterFirebaseService.getInstance()
        .updateRegisterSpecificDayData(totalDays);
    notifyListeners();
  }

  Future? updateRegisterUserPositionData(posUser) {
    notifyListeners();

    RegisterFirebaseService.getInstance().updateRegisterUserPosition(posUser);
    notifyListeners();
  }

  Future? updateRegisterUserGetPaidPer(userPer) {
    notifyListeners();
    RegisterFirebaseService.getInstance().updateRegisterUserPaidPer(userPer);
    notifyListeners();
  }

  Future? RegisterWithEmailUsingFirebase(
      emailaddress, password, context, name) async {
    try {
      notifyListeners();
      await RegisterFirebaseService.getInstance()
          .registerWithEmail(emailaddress, password, context, name);
      notifyListeners();
      print("RegisterWithEmailUsingFirebase login success");
      return "login";
    } catch (e) {
      print("RegisterWithEmailUsingFirebase error: $e");
      return "error";
    }
  }

  Future? updateRegisterUserPassword(userPassword, context) async {
    notifyListeners();
    await RegisterFirebaseService.getInstance()
        .updateRegisterUserPassword(userPassword, context);

    notifyListeners();
  }

  Future? updateRegisterSaleUserPosition(userPos, userPer, userSale) async {
    print("$userPos   $userPer   $userSale");
    notifyListeners();
    await RegisterFirebaseService.getInstance()
        .updateRegisterSaleUserPosition(userPos, userPer, userSale);
    notifyListeners();
  }
}
