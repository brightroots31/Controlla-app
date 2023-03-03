// ignore_for_file: avoid_unnecessary_containers

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Components/textinputfield.dart';
import 'package:controlla/Login/provider/login_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isloader = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<LoginProvider>(
      create: (context) {
        return LoginProvider();
      },
      child: Consumer<LoginProvider>(
        builder: ((context, provider, child) {
          return Stack(
            children: [
              SafeArea(
                  child: SingleChildScrollView(
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.110,
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
                        controller: _password,
                        hinttext: "Password",
                        obscuretext: true,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.105,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 60,
                        child: FormTextButton(
                          buttontitle: "LOGIN",
                          buttontitlestyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.032,
                              fontWeight: FontWeight.w400),
                          onpressed: () async {
                            if (_email.text.toString().trim().isEmpty) {
                              Fluttertoast.showToast(msg: "Please enter email");
                            } else if (_password.text
                                .toString()
                                .trim()
                                .isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Please enter password");
                            } else {
                              setState(() {
                                isloader = true;
                              });

                              await provider.loginWithEmailUsingFirebase(
                                  _email.text.trim().toString(),
                                  _password.text.trim().toString(),
                                  context);

                              setState(() {
                                isloader = false;
                              });
                            }
                          },
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.105,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 80,
                        child: FormTextButton(

                          buttontitle: "Register new account",
                          buttontitlestyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.024,
                              fontWeight: FontWeight.w500),
                          onpressed: () {
                            setState(() {
                              isloader = false;
                            });

                            Navigator.pushNamed(
                                context, AppRoutes.RegisterPage);
                          },
                        )),
                    const SizedBox(height: 20)
                  ]),
                ),
              )),
              Visibility(
                  visible: isloader,
                  child: Scaffold(
                    backgroundColor: Colors.black38,
                    body: Center(
                        child: Container(
                      child: const CircularProgressIndicator(
                        color: Constant.primaryColor,
                      ),
                    )),
                  ))
            ],
          );
        }),
      ),
    ));
  }
}
