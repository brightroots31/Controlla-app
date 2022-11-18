import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class SellCongratsScreen extends StatefulWidget {
  const SellCongratsScreen({Key? key}) : super(key: key);

  @override
  State<SellCongratsScreen> createState() => _SellCongratsScreenState();
}

class _SellCongratsScreenState extends State<SellCongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.190,
            ),
            Image.asset(
              Imagesforapp.congrats_for_sell,
              width: MediaQuery.of(context).size.width - 80,
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: FormTextButton(
                buttontitle: "Next",
                buttontitlestyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.024,
                    fontWeight: FontWeight.w500),
                onpressed: () {
                 Navigator.pushNamed(context, AppRoutes.MainScreen);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
