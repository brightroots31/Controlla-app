// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/provider/profile_service.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  // String _dropDownValue = "Choose Position";
  String _dropDownValue = "Closer";
  String _NewPasswordValue = "";

  @override
  void initState() {
    super.initState();
    ProfileFirebaseService.getInstance().fetchCustomerUserLoginData();
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 4);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
                child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: const BoxDecoration(color: Constant.primaryColor),
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Account Setting',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.030,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.030),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Whats your position?',
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: MediaQuery.of(context).size.height * 0.069,
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
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          calculateStack();
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            // 'CLOSER',
                            _dropDownValue,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                calculateStack();
                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Constant.primaryColor,
                              size: MediaQuery.of(context).size.height * 0.060,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.030),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ABC',
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: MediaQuery.of(context).size.height * 0.069,
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
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      children: [
                        Text(
                          'A',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Constant.primaryColor,
                          size: MediaQuery.of(context).size.height * 0.060,
                        )
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.030),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "WHATS'S YOUR HOTEL?",
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: MediaQuery.of(context).size.height * 0.069,
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
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      children: [
                        Text(
                          'HARD ROCK CANCUN',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Constant.primaryColor,
                          size: MediaQuery.of(context).size.height * 0.060,
                        )
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.030),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "DISCOUNT CANCELATION FUND",
                    style: TextStyle(
                        color: Constant.primaryColor,
                        fontSize: MediaQuery.of(context).size.height * 0.023,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: MediaQuery.of(context).size.height * 0.069,
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
                      child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 24.0),
                    child: Row(
                      children: [
                        Text(
                          'Change Password',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              color: Constant.primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.ResetPassword);
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: Constant.primaryColor,
                            size: MediaQuery.of(context).size.height * 0.035,
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: MediaQuery.of(context).size.height * 0.069,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Constant.primaryColor,
                  ),
                  child: InkWell(
                    onTap: () {
                      RegisterProvider()
                          .updateRegisterUserPositionData(_dropDownValue);
                      // _NewPasswordValue == ''
                      //     ? RegisterProvider()
                      //         .updateRegisterUserPassword("1234567890")
                      //     : RegisterProvider()
                      //         .updateRegisterUserPassword(_NewPasswordValue);
                      Navigator.pop(context);
                    },
                    child: Center(
                        child: Text(
                      "SAVE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height * 0.022),
                    )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
              ],
            )),
            Positioned(
              left: 45,
              right: 45,
              top: MediaQuery.of(context).size.height / 4.4,
              child: AnimatedContainer(
                height: stackHeight,
                duration: Duration(microseconds: 500),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Constant.primaryColor, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    buildInkWell(context, "Closer"),
                    buildInkWell(context, "Saler"),
                    buildInkWell(context, "Broker"),

                    // Container(
                    //     decoration: BoxDecoration(
                    //         // color: Constant.primaryColor,
                    //         border: Border.all(
                    //             width: 1.5)),
                    //     child: Text("Profile",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w500))),
                    // SizedBox(height: 4),
                    // Container(
                    //     decoration: BoxDecoration(
                    //         color: Constant.primaryColor,
                    //         border: Border.all(
                    //             color: Constant.primaryColor,
                    //             width: 1.5)),
                    //     child: Text("Logout",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w500))),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildInkWell(BuildContext context, posName) {
    return InkWell(
      onTap: () {
        setState(() {
          calculateStack();
          _dropDownValue = posName;
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(posName,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.020,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  double stackHeight = 0.0;

  calculateStack() {
    stackHeight == 0 ? stackHeight = 110 : stackHeight = 0;
  }
}
