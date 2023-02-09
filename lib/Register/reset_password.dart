// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Components/textinputfield.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/Register/service/register_firebaseService.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool isloader = false;
  final TextEditingController currentPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        SingleChildScrollView(
          child: Center(
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
                          'Change Password',
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
                height: MediaQuery.of(context).size.height * 0.070,
              ),
              Image.asset(
                Imagesforapp.controlla_logo,
                color: Constant.primaryColor,
                height: MediaQuery.of(context).size.height * 0.115,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: TextInputField(
                  obscuretext: true,
                  hinttext: " Current Password",
                  controller: currentPassword,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: TextInputField(
                  obscuretext: true,
                  hinttext: "New Password",
                  controller: newPassword,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: TextInputField(
                  obscuretext: true,
                  hinttext: "Confirm Password",
                  controller: confirmPassword,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.115,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 60,
                  child: FormTextButton(
                    buttontitle: "Save",
                    buttontitlestyle: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.024,
                        fontWeight: FontWeight.w500),
                    onpressed: () async {
                      if (currentPassword.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please enter current password.");
                      } else if (ProfileDetails.userPassword !=
                          currentPassword.text) {
                        Fluttertoast.showToast(
                            msg: "Please enter correct current password.");
                      } else if (newPassword.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please enter new password.");
                      } else if (newPassword.text.length < 8) {
                        Fluttertoast.showToast(
                            msg: "Please enter 8 digit new password");
                      } else if (confirmPassword.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please enter confirm password.");
                      } else if (confirmPassword.text.length < 8) {
                        Fluttertoast.showToast(
                            msg: "Please enter 8 digit confirm password");
                      } else if (newPassword.text != confirmPassword.text) {
                        Fluttertoast.showToast(
                            msg: "Confirm password not matched.");
                      } else if (ProfileDetails.userPassword ==
                              currentPassword.text &&
                          newPassword.text.toString().trim() ==
                              confirmPassword.text.toString().trim()) {
                        setState(() {
                          isloader = true;
                        });
                        await RegisterFirebaseService.getInstance()
                            .updateRegisterUserPassword(
                                confirmPassword.text, context);
                        await fetchDataSF();
                        setState(() {
                          isloader = false;
                        });
                        // Navigator.pop(context);
                      }
                    },
                  )),
              SizedBox(height: 20)
            ],
          )),
        ),
        Visibility(
            visible: isloader,
            child: Scaffold(
              backgroundColor: Colors.black38,
              body: Center(
                  child: Container(
                child: CircularProgressIndicator(
                  color: Constant.primaryColor,
                ),
              )),
            ))
      ],
    )));
  }
}
