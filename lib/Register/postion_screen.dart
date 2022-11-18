import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class PostionScreen extends StatefulWidget {
  const PostionScreen({Key? key}) : super(key: key);

  @override
  State<PostionScreen> createState() => _PostionScreenState();
}

class _PostionScreenState extends State<PostionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
          ),
          Text(
            'what is you position called :broker, saler, closer etc',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.033,
                color: Constant.primaryColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            width: MediaQuery.of(context).size.height * 0.208,
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
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text(
                  'broker',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ]),
            )),
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
               Navigator.pushNamed(context, AppRoutes.GetPaidScreen);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]),
      )),
    );
  }
}
