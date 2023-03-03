// ignore_for_file: prefer_conditional_assignment

import 'package:controlla/provider/profile_service.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginFirebaseService {
  static LoginFirebaseService? _instance;

  LoginFirebaseService._internal();

  static LoginFirebaseService getInstance() {
    if (_instance == null) {
      _instance = LoginFirebaseService._internal();
    }
    return _instance!;
  }

  Future<String> loginWithEmail(email, password, context) async {
    try {
      // final credential = 
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async{
            LocalDataSaver.saveUserUid(value.user!.uid.toString());
            // LocalDataSaver.saveUserMobileNumber(value.user!.phoneNumber);
            LocalDataSaver.saveUserEmail(value.user!.email);
            LocalDataSaver.saveUserLogData(true);

            await fetchDataSF();
            print(ProfileDetails.userMobileNumber);
                print("LoginService=====>$value");

             await   ProfileFirebaseService.getInstance().fetchCustomerUserLoginData();
            Fluttertoast.showToast(msg: "Login Successfully");
            Navigator.pushReplacementNamed(context, AppRoutes.MainScreen);
              });
      return "login";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {

       Fluttertoast.showToast(msg: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");
      } else {

        print("LoginService errrrr::$e");
      }
      return "error";
    }
  }

  Future? passChange()async{
   // await FirebaseAuth.instance.
  }
}
