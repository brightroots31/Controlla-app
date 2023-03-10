// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HowMuchSellPage extends StatefulWidget {
  const HowMuchSellPage({Key? key}) : super(key: key);

  @override
  State<HowMuchSellPage> createState() => _HowMuchSellPageState();
}

class _HowMuchSellPageState extends State<HowMuchSellPage> {
  String? _getPaidSell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Container(
                color: Constant.primaryColor,
                height: 1,
              )),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Constant.primaryColor,
            ),
          ),
          title: const Text(
            "Main",
            style: TextStyle(color: Constant.primaryColor),
          ),
        ),
        body: ChangeNotifierProvider<RegisterProvider>(
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
                        Text('Congratulations!',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.033,
                                color: Constant.primaryColor)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Text('How much did you sell?',
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
                              width: MediaQuery.of(context).size.height * 0.3,
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
                                    maxLength: 6,
                                    decoration: InputDecoration(
                                        counterText: "",
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        border: InputBorder.none,
                                        hintText: ""),
                                    onChanged: (String value) {
                                      setState(() {
                                        _getPaidSell = value.toString();
                                      });
                                    },
                                  ),
                                ]),
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4),
                        (_getPaidSell == null || _getPaidSell!.isEmpty)
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
                                    Navigator.pushNamed(
                                        context, AppRoutes.PositionChoosePage,
                                        arguments: _getPaidSell.toString());
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
