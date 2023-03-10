// ignore_for_file: prefer_conditional_assignment

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterFirebaseService {
  static RegisterFirebaseService? _instance;

  RegisterFirebaseService._internal();

  static RegisterFirebaseService getInstance() {
    if (_instance == null) {
      _instance = RegisterFirebaseService._internal();
    }
    return _instance!;
  }

  Future? registeruserindatabase(name, password) async {
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance.collection('Users').doc(auth!.uid).set({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "password": password,
        "time": DateTime.now().toString(),
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterDataWeekly(selectedDay) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "weekly": {
          "selectedDay": selectedDay,
        }
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterBiWeeklyEveryWeek(selectedOtherWeekDay,selectedDays) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "Bi-Weekly": {
          "EveryOtherWeek": {"selectedDay": selectedOtherWeekDay},
          "SelectedDays":selectedDays
        }
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterMonthlyData(selectedDate, delayOnpaymentCheck) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "Monthly": {
          "selectedDate": selectedDate,
          "delay on payment check": delayOnpaymentCheck,
        }
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterSpecificDayData(totalDays) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "SpecificDay": {
          "Fixed running Days": {
            "Days after the sale do you get paid": totalDays
          }
        }
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterBiWeeklyTwiceAMonth(selectedDate, periodOfSale) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "Bi-Weekly": {
          "Twice a month": {
            "selectedDate": selectedDate,
            "period of sale": periodOfSale,
          }
        }
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? registerWithEmail(emailAddress, password, context, name) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          )
          .then((value) => {
                print(value),
                LocalDataSaver.saveUserUid(value.user!.uid.toString()),
                LocalDataSaver.saveUserMobileNumber(value.user!.phoneNumber),
                LocalDataSaver.saveUserLogData(true),
                Navigator.pushNamed(context, AppRoutes.OftenScreen),
                registeruserindatabase(name, password),
                Fluttertoast.showToast(msg: "Register Successfully")
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {

        Fluttertoast.showToast(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "The account already exists for that email.");
      }
    } catch (e) {
      print("====$e");
    }
  }

  Future? updateRegisterUserPosition(userPos) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "userPosition": userPos
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterUserPaidPer(perPaid) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        // "userPosition": userPos,
        "getPaid": perPaid
      });
    } catch (e) {
      print("===$e");
    }
  }

  Future? updateRegisterUserPassword(newPassword, context) async {
    try {
      final auth = FirebaseAuth.instance.currentUser;

      await auth!.updatePassword(newPassword);

      print("newPassword:$newPassword");
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth.uid)
          .update({"password": newPassword});
      LocalDataSaver.saveUserPassword(newPassword);
      await fetchDataSF();
      Fluttertoast.showToast(msg: "Password change successfully");
      Navigator.pop(context);
    } catch (e) {
      if (e.toString() ==
          "[firebase_auth/requires-recent-login] This operation is sensitive and requires recent authentication. Log in again before retrying this request.") {
        Fluttertoast.showToast(msg: "Internal server error");
        Navigator.pop(context);
      }
      print("updateRegisterUserPassword error===>$e");
    }
  }

  Future? updateRegisterSaleUserPosition(userPos, userPerc, userSale) async {
    final name = await LocalDataSaver.getUserName();
    try {
      final auth = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth!.uid)
          .update({
        "email": auth.email,
        "userName": name,
        "userUid": auth.uid,
        "userSaleData": {
          "userSalePosition": userPos,
          "userSalePer": "$userPerc%",
          "userTotalSell": userSale,
        }
      });

    } catch (e) {
      print("===$e");
    }
  }
}
