// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class PostionScreen extends StatefulWidget {
  const PostionScreen({Key? key}) : super(key: key);

  @override
  State<PostionScreen> createState() => _PostionScreenState();
}

class _PostionScreenState extends State<PostionScreen> {
  String _dropDownValue = "Choose Position";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterProvider>(
      create: (context) {
        return RegisterProvider();
      },
      child: Consumer<RegisterProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: SafeArea(
                child: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
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
                    width: MediaQuery.of(context).size.height * 0.26,
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
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Choose position",
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _dropDownValue = value;
                            });
                          },
                        ),
                        // DropdownButtonHideUnderline(
                        //     child: DropdownButtonFormField(
                        //       decoration: InputDecoration(border: InputBorder.none),
                        //   items: ["Broker", "Saler", "Closer"].map((value) {
                        //     return DropdownMenuItem(value: value, child: Text(value));
                        //   }).toList(),
                        //   hint: Text(_dropDownValue),
                        //   onChanged: (val) {
                        //     setState(() {
                        //       _dropDownValue = val.toString();
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: FormTextButton(
                      buttontitle: "Next",
                      buttontitlestyle: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.024,
                          fontWeight: FontWeight.w500),
                      onpressed: () {
                        print(_dropDownValue.trim().toUpperCase());
                        if (_dropDownValue.trim() == "Choose Position") {
                          Fluttertoast.showToast(
                              msg: "Please enter your position");
                        } else if (_dropDownValue.trim().toUpperCase() != "BROKER" &&
                            _dropDownValue.trim().toUpperCase() != "CLOSER" &&
                            _dropDownValue.trim().toUpperCase() != "SALER") {
                          Fluttertoast.showToast(
                              msg: "Please enter valid position");
                        } else {
                          provider.updateRegisterUserPositionData(
                              _dropDownValue.toString().trim().toUpperCase());
                          Navigator.pushNamed(context, AppRoutes.GetPaidScreen);
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
              ),
            )),
          );
        },
      ),
    );
  }

  DropdownButtonHideUnderline dropdownButtonHideUnderline() {
    return DropdownButtonHideUnderline(
        child: DropdownButton(
      items: ["Broker"].map((value) {
        return DropdownMenuItem(value: value, child: Text(value));
      }).toList(),
      onChanged: (val) {
        setState(() {
          _dropDownValue = val.toString();
        });
      },
    ));
  }
}
