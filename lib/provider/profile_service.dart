// ignore_for_file: prefer_final_fields, prefer_conditional_assignment, avoid_print, avoid_function_literals_in_foreach_calls, unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:intl/intl.dart';

class ProfileFirebaseService {
  static ProfileFirebaseService? _instance;

  ProfileFirebaseService._internal();

  static ProfileFirebaseService getInstance() {
    if (_instance == null) {
      _instance = ProfileFirebaseService._internal();
    }
    return _instance!;
  }

  QueryDocumentSnapshot? last;
  bool isCancelJob = false;

  Future fetchCustomerUserLoginData() async {
    List userALlDetailsList = [];
    userALlDetailsList.clear();
    CollectionReference<Map<String, dynamic>> reference =
        FirebaseFirestore.instance.collection("Users");
    QuerySnapshot data;
    data = await reference.orderBy("email", descending: true).get();
    // data = await reference.get();
    if (data != null && data.docs.isNotEmpty) {
      userALlDetailsList.clear();
      last = data.docs[data.docs.length - 1];
      data.docs.forEach((element) {
        if (element.exists) {
          print(" ProfileDetails.userUid::${ProfileDetails.userUid}");
          ProfileDetails.userUid == element.id
              ? userALlDetailsList.add(
                  // ProviderJobStatusModel.fromJson(element.data() as Map)
                  element.data(),
                )
              : null;
        }
      });
    }

    print("userALlDetailsList::$userALlDetailsList");
    // print("userALlDetailsList::${userALlDetailsList[0]["userName"]}");
    // print("userALlDetailsList::${userALlDetailsList[0]["email"]}");
    // print("userALlDetailsList::${userALlDetailsList[0]["userPosition"]}");
    // print("userALlDetailsList::${userALlDetailsList[0]["userUid"]}");
    // print("userALlDetailsList::${userALlDetailsList[0]["password"]}");

    LocalDataSaver.saveUserName(userALlDetailsList[0]["userName"]);
    LocalDataSaver.saveUserProfilePosition(
        userALlDetailsList[0]["userPosition"]);
    LocalDataSaver.saveUserEmail(userALlDetailsList[0]["email"]);
    LocalDataSaver.saveUserPassword(userALlDetailsList[0]["password"]);
    LocalDataSaver.saveUserPaidPerc(userALlDetailsList[0]["getPaid"]);
    // LocalDataSaver.saveUserSelectWeekDay(userALlDetailsList[0]["weekly"]["selectedDay"]);
    // print("${userALlDetailsList[0]["userSaleData"]["userSalePosition"]}");
    // print("${userALlDetailsList[0]["userSaleData"]["userTotalSell"]}");
    // print("${userALlDetailsList[0]["userSaleData"]["userSalePer"]}");

    await fetchDataSF();

    // print("weekly::${userALlDetailsList[0]["weekly"]}");
    // print("Bi-Weekly::${userALlDetailsList[0]["Bi-Weekly"]["EveryOtherWeek"]}");

    if (userALlDetailsList[0]["weekly"] != null) {
      LocalDataSaver.saveUserSelectWeekDay(
          userALlDetailsList[0]["weekly"]["selectedDay"]);
      print("weekly format::${userALlDetailsList[0]["weekly"]}");
    }
    else if (userALlDetailsList[0]["Monthly"] != null) {
      LocalDataSaver.saveUserSelectWeekDay(
          DateFormat('EEEE').format(DateTime.now()));
      print("Monthly:: ${userALlDetailsList[0]["Monthly"]}");
    }
    else if (userALlDetailsList[0]["Bi-Weekly"] != null) {
      if (userALlDetailsList[0]["Bi-Weekly"]["EveryOtherWeek"] != null) {
        LocalDataSaver.saveUserSelectWeekDay(userALlDetailsList[0]["Bi-Weekly"]
            ["EveryOtherWeek"]["selectedDay"]);
        print(
            "Bi-Weekly.EveryOtherWeek:: ${userALlDetailsList[0]["Bi-Weekly"]}");
      }
      else if (userALlDetailsList[0]["Bi-Weekly"]["Twice a month"] != null) {
        LocalDataSaver.saveUserSelectWeekDay(
            userALlDetailsList[0]["Bi-Weekly"]["Twice a month"]);
        print(
            "Bi-Weekly.TwiceA_Month:: ${userALlDetailsList[0]["Bi-Weekly"]["Twice a month"]}");
      }}
    else if (userALlDetailsList[0]["SpecificDay"] != null) {
      if(userALlDetailsList[0]["SpecificDay"]["Fixed running Days"] !=null){
      LocalDataSaver.saveUserSelectWeekDay(
          DateFormat('EEEE').format(DateTime.now()));
      print("SpecificDay.FixedRunningDays:: ${userALlDetailsList[0]["SpecificDay"]["Fixed running Days"]}");}
      else{
        LocalDataSaver.saveUserSelectWeekDay(
            DateFormat('EEEE').format(DateTime.now()));
        print("Selected format::::: ${userALlDetailsList[0]["SpecificDay"]}");
      }}
    else {
      LocalDataSaver.saveUserSelectWeekDay(
          DateFormat('EEEE').format(DateTime.now()));
      print("Selected format::::: ${userALlDetailsList[0]}");
    }

    await fetchDataSF();
    print("ProfileFirebaseService:: ${ProfileDetails.userSelectWeekDay}");
    return userALlDetailsList;
  }
}
