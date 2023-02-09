// ignore_for_file: prefer_final_fields, prefer_conditional_assignment, avoid_print, avoid_function_literals_in_foreach_calls, unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';

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
          ProfileDetails.userUid == element.id?
              userALlDetailsList.add(
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
    LocalDataSaver.saveUserProfilePosition(userALlDetailsList[0]["userPosition"]);
    LocalDataSaver.saveUserEmail(userALlDetailsList[0]["email"]);
    LocalDataSaver.saveUserPassword(userALlDetailsList[0]["password"]);
    LocalDataSaver.saveUserPaidPerc(userALlDetailsList[0]["getPaid"]);
    await fetchDataSF();
    return userALlDetailsList;
  }
}
