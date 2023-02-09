// ignore_for_file: use_build_context_synchronously, avoid_unnecessary_containers, prefer_const_constructors

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Components/textinputfield.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/local_database.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_utils/get_utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isloader = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<RegisterProvider>(
        create: (BuildContext context) {
          return RegisterProvider();
        },
        child: Consumer<RegisterProvider>(builder: (context, provider, child) {
          return SafeArea(
              child: Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.070,
                    ),
                    Image.asset(
                      Imagesforapp.controlla_logo,
                      color: Constant.primaryColor,
                      height: MediaQuery.of(context).size.height * 0.115,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.070,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      child: TextInputField(
                        hinttext: "Name",
                        obscuretext: false,
                        controller: _name,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      child: TextInputField(
                        hinttext: "Email",
                        controller: _email,
                        obscuretext: false,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      child: TextInputField(
                        obscuretext: true,
                        hinttext: "Password",
                        controller: _password,
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
                        controller: _confirmPassword,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 60,
                        child: FormTextButton(
                          buttontitle: "CONTINUE",
                          buttontitlestyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.024,
                              fontWeight: FontWeight.w500),
                          onpressed: () async {
                            // setState(() {
                            //   isloader = true;
                            // });
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.remove('onpressed');

                            if (_name.text.toString().trim().isEmpty) {
                              Fluttertoast.showToast(msg: "Please enter Name");
                            } else if (_email.text.toString().trim().isEmpty) {
                              Fluttertoast.showToast(msg: "Please Enter email");
                            } else if (!GetUtils.isEmail(
                                _email.text.toString().trim())) {
                              Fluttertoast.showToast(
                                  msg: "Please Enter valid email");
                            } else if (_password.text
                                .toString()
                                .trim()
                                .isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Please enter password");
                            } else if (_password.text.length < 8) {
                              Fluttertoast.showToast(
                                  msg: "Please enter 8 digit password");
                            } else if (_confirmPassword.text
                                .toString()
                                .trim()
                                .isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Please enter confirm password");
                            } else if (_confirmPassword.text.length < 8) {
                              Fluttertoast.showToast(
                                  msg: "Please enter 8 digit confirm password");
                            } else if (_password.text.toString().trim() !=
                                _confirmPassword.text.toString().trim()) {
                              Fluttertoast.showToast(
                                  msg: "Confirm password not matched.");
                            } else if (_password.text.toString().trim() ==
                                _confirmPassword.text.toString().trim()) {
                              setState(() {
                                isloader = true;
                                LocalDataSaver.saveUserName(
                                    _name.text.trim().toString());
                              });

                              await fetchDataSF();
                              await provider.RegisterWithEmailUsingFirebase(
                                  _email.text.trim().toString(),
                                  _password.text.trim().toString(),
                                  context,
                                  _name.text.trim().toString());

                              setState(() {
                                isloader = false;
                              });
                            }
                          },
                        )),
                    SizedBox(height: 40),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 60,
                        child: FormTextButton(
                          buttontitle: "Already have an account",
                          buttontitlestyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.024,
                              fontWeight: FontWeight.w500),
                          onpressed: () {
                            Navigator.pushReplacementNamed(
                                context, AppRoutes.LoginPage);
                          },
                        )),
                    SizedBox(height: 20),
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
          ));
        }),
      ),
    );
  }
}
