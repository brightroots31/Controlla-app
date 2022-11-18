import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/Components/textinputfield.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.070,
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
                hinttext: "Name",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
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
                hinttext: "Phone Number",
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
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: const TextInputField(
                hinttext: "Confirm Password",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.115,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: FormTextButton(
                  buttontitle: "CONTINUE",
                  buttontitlestyle: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.024,
                      fontWeight: FontWeight.w500),
                  onpressed: () {
                    Navigator.pushNamed(context, AppRoutes.OftenScreen);
                  },
                )),
            const SizedBox(
              height: 20,
            )
          ],
        )),
      )),
    );
  }
}
