// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isLogout = false;
  List titleofbutton = [
    "Tiago",
    "Account setting",
    "Notifications",
    "Administrators",
    "Term and conditions",
    "Premium version",
    "Contact",
    "Logout",
  ];
  List buttonimage = [
    Imagesforapp.tiago,
    Imagesforapp.accountsetting,
    Imagesforapp.notification,
    Imagesforapp.administrators,
    Imagesforapp.termandcondition,
    Imagesforapp.premiumverion,
    Imagesforapp.contact,
    Imagesforapp.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: const BoxDecoration(color: Constant.primaryColor),
                child: Center(
                  child: Text(
                    'Setting',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.030,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // index == 0
                                //     ? Navigator.pushNamed(
                                //         context, AppRoutes.HowMuchSellPage)
                                //     : null;
                                index == 1
                                    ? Navigator.pushNamed(
                                        context, AppRoutes.AccountSettingScreen)
                                    : null;
                                index == 4
                                    ? Navigator.pushNamed(
                                        context, AppRoutes.TermandCondition)
                                    : null;
                                index == 5
                                    ? Navigator.pushNamed(context,
                                        AppRoutes.PremimumVersionScreen)
                                    : null;
                                index == 7
                                    ? showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                                "Are you sure you want to logout?"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("No",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Constant
                                                              .primaryColor))),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    setState(() {
                                                      LocalDataSaver
                                                          .saveUserLogData(
                                                              false);
                                                      _logOut();
                                                    });
                                                  },
                                                  child: Text("Yes",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Constant
                                                              .primaryColor))),
                                            ],
                                          );
                                        })
                                    : null;
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.070,
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
                                child: Center(
                                    child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 30,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        buttonimage[index],
                                        color: Constant.primaryColor,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.033,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.028,
                                      ),
                                      Text(
                                        titleofbutton[index],
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.022,
                                            color: Constant.primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.height *
                                                0.023,
                                        backgroundColor: Constant.primaryColor,
                                        child: const Center(
                                            child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                        )),
                                      )
                                    ],
                                  ),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            )
                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVisibility() {
    return Visibility(
        visible: isLogout,
        child: Scaffold(
          backgroundColor: Colors.black38,
          body: Center(
              child: const CircularProgressIndicator(
            color: Constant.primaryColor,
          )),
        ));
  }

  Future? _logOut() async {
    setState(() {
      isLogout = true;
    });
    LocalDataSaver.saveUserLogData(false);
    await fetchDataSF();
    await FirebaseAuth.instance.signOut();
    await removeDataSF();
    Navigator.of(context).popUntil((route) => route.isFirst);
    setState(() {
      isLogout = false;
    });
    Navigator.pushReplacementNamed(context, AppRoutes.LoginPage);
  }
}
