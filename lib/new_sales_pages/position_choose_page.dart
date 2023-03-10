// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PositionChoosePage extends StatefulWidget {
  const PositionChoosePage({Key? key}) : super(key: key);

  @override
  State<PositionChoosePage> createState() => _PositionChoosePageState();
}

class _PositionChoosePageState extends State<PositionChoosePage> {
  String _getPaidSell = "0";
  String _getPosPerc = '0%';
  String _getPosName = "Broker";

  @override
  Widget build(BuildContext context) {
    _getPaidSell = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: false,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(color: Constant.primaryColor, height: 1)),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new,
                    color: Constant.primaryColor)),
            title: const Text("How much did you ...",
                style: TextStyle(color: Constant.primaryColor))),
        body: ChangeNotifierProvider(
          create: (context) {
            return RegisterProvider();
          },
          child: Consumer<RegisterProvider>(
            builder: (context, provider, child) {
              return SafeArea(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        Text('Choose your position:',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.033,
                                color: Constant.primaryColor)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Constant.primaryColor),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 1))
                                ],
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(children: [
                                  DropdownButtonHideUnderline(
                                      child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    items: ["Broker", "Agent", "Closer"]
                                        .map((value) {
                                      return DropdownMenuItem(
                                          value: value, child: Text(value));
                                    }).toList(),
                                    hint: Text(_getPosName),
                                    onChanged: (val) {
                                      setState(() {
                                        _getPosName = val.toString();

                                      });
                                    },
                                  )),
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
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Constant.primaryColor),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: const Offset(0, 1))
                                ],
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(children: [
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 3,
                                    decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        border: InputBorder.none,
                                        hintText: _getPosPerc),
                                    onChanged: (String value) {
                                      setState(() {
                                        _getPosPerc = value.toString();
                                        print("$_getPosPerc    $_getPosName");
                                      });
                                    },
                                  ),
                                ]),
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3),
                        (_getPosPerc.isEmpty || _getPosName.isEmpty)
                            ? SizedBox()
                            : SizedBox(
                                width: MediaQuery.of(context).size.width - 60,
                                child: FormTextButton(
                                  buttontitle: "Next",
                                  buttontitlestyle: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.024,
                                      fontWeight: FontWeight.w500),
                                  onpressed: () {
                                    provider.updateRegisterSaleUserPosition(
                                      _getPosName.toString(),
                                      _getPosPerc.toString(),
                                      _getPaidSell.toString(),
                                    );
                                    Navigator.of(context).popUntil((route) => route.isFirst);
                                    Navigator.pushReplacementNamed(context, AppRoutes.MainScreen);

                                  },
                                ),
                              ),
                        SizedBox(height: 20)
                      ]),
                ),
              ));
            },
          ),
        ));
  }
}
