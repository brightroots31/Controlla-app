// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class GetPaidScreen extends StatefulWidget {
  const GetPaidScreen({Key? key}) : super(key: key);

  @override
  State<GetPaidScreen> createState() => _GetPaidScreenState();
}

class _GetPaidScreenState extends State<GetPaidScreen> {
  String _getPaidPerc = "Choose Paid";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterProvider>(
      create: (context) {
        return RegisterProvider();
      },
      child: Consumer<RegisterProvider>(builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
              child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'As a closer how much do you get paid in %?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.033,
                              color: Constant.primaryColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Constant.primaryColor),
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
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Choose paid",
                              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0)),
                          onChanged: (String value) {
                            setState(() {
                              _getPaidPerc = value.toString();
                            });
                          },
                        ),

                        // DropdownButtonHideUnderline(
                        //     child: DropdownButtonFormField(
                        //       decoration: InputDecoration(border: InputBorder.none),
                        //   items: ["20", "40", "60","80","100"].map((value) {
                        //     return DropdownMenuItem(value: value, child: Text(value));
                        //   }).toList(),
                        //   hint: Text(_getPaidPerc),
                        //   onChanged: (val) {
                        //     setState(() {
                        //       _getPaidPerc = val.toString();
                        //     });
                        //   },
                        // ))
                        // Text(
                        //   'broker',
                        //   style: TextStyle(
                        //       fontSize: MediaQuery.of(context).size.height * 0.032,
                        //       color: Constant.primaryColor,
                        //       fontWeight: FontWeight.w500),
                        // ),
                      ]),
                    )),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can add/edit later',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.020,
                        color: Constant.primaryColor),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                  (_getPaidPerc == "Choose Paid" || _getPaidPerc.isEmpty)
                      ? SizedBox()
                      : SizedBox(
                          width: MediaQuery.of(context).size.width - 60,
                          child: FormTextButton(
                            buttontitle: "Next",
                            buttontitlestyle: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.024,
                                fontWeight: FontWeight.w500),
                            onpressed: () {
                              if (_getPaidPerc.trim() == "Choose Paid") {
                                Fluttertoast.showToast(
                                    msg: "Please enter get paid %");
                              } else {
                                provider.updateRegisterUserGetPaidPer(
                                    "${_getPaidPerc.trim()}%");

                                Navigator.pushNamed(
                                    context, AppRoutes.SellCongratsScreen);
                              }
                            },
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
              ),
            ),
          )),
        );
      }),
    );
  }
}
