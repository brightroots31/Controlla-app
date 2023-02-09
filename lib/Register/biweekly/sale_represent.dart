import 'package:controlla/Components/images.dart';
import 'package:controlla/Register/provider/register_provider.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SaleRepresent extends StatefulWidget {
  final selectdate;
  const SaleRepresent({Key? key, this.selectdate}) : super(key: key);

  @override
  State<SaleRepresent> createState() => _SaleRepresentState();
}

class _SaleRepresentState extends State<SaleRepresent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Container(
              color: Constant.primaryColor,
              height: 1,
            )),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Constant.primaryColor,
          ),
        ),
        title: const Text(
          "How often do you...",
          style: TextStyle(color: Constant.primaryColor),
        ),
      ),
      
        body: ChangeNotifierProvider<RegisterProvider>(
      create: (context) {
        return RegisterProvider();
      },
      child: Consumer<RegisterProvider>(builder: ((context, provider, child) {
        return SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: Text(
                  'If you receive a payment on November ${widget.selectdate}, which period of sale does it represent?',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.035,
                      fontWeight: FontWeight.w700,
                      color: Constant.primaryColor),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.060,
              ),
              
              InkWell(
                onTap: () {
                  provider.UpdateRegisterDataBiweeklyTwiceAMonth(
                      widget.selectdate, "1st half of October");
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '1st half of October',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will receive the proceeds generated from 1st to 15th',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(
                        Imagesforapp.salesreprestcalanderabove,
                        color: Constant.primaryColor,
                      ))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              InkWell(
                onTap: () {
                  provider.UpdateRegisterDataBiweeklyTwiceAMonth(
                      widget.selectdate, "2nd half of October");
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '2nd half of October',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will receive the proceeds generated from 1st to 15th',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(
                        Imagesforapp.salesreprestcalanderdown,
                        color: Constant.primaryColor,
                      ))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              InkWell(
                onTap: () {
                  provider.UpdateRegisterDataBiweeklyTwiceAMonth(
                      widget.selectdate, "1st half of September");
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '1st half of September',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will receive the proceeds generated from 1st to 15th',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(
                              Imagesforapp.salesreprestcalanderabove,
                              color: Constant.primaryColor))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              InkWell(
                onTap: () {
                  provider.UpdateRegisterDataBiweeklyTwiceAMonth(
                      widget.selectdate, "2nd half of September");
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.CongratsScreen);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constant.primaryColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              '2nd half of September',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.019,
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              'You will recieve payment in specific day in future',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: Constant.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Image.asset(
                              Imagesforapp.salesreprestcalanderdown,
                              color: Constant.primaryColor))
                    ]),
                  ),
                ),
              )
            ]),
          ),
        ));
      })),
    ));
  }
}
