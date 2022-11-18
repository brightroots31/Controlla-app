import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Components/textinputfield.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.110,
            ),
            Image.asset(
              Imagesforapp.controlla_logo,
              height: MediaQuery.of(context).size.height * 0.115,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.070,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: const TextInputField(
                hinttext: "Email",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: const TextInputField(
                hinttext: "Password",
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
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      fontWeight: FontWeight.w400),
                      onpressed: (){
                       Navigator.pushNamed(context, AppRoutes.MainScreen);
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
                      fontSize: MediaQuery.of(context).size.height * 0.024,
                      fontWeight: FontWeight.w500),
                  onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.RegisterPage);
                  },
                )),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
      )),
    );
  }
}
