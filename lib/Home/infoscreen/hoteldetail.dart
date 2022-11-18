// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class HotelDetailsScreen extends StatefulWidget {
  final title;
  const HotelDetailsScreen({Key? key, this.title}) : super(key: key);

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: const BoxDecoration(
              color: Color(0xff1EC05D),
            ),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.030,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: Row(children: [
              Text(
                'Room : ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Text(
                  '1264',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: Row(children: [
              Text(
                'Opening year : ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Text(
                  'May 2014',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: Row(children: [
              Text(
                'Pools : ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Text(
                  '4',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: Row(children: [
              Text(
                'Resturants : ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Text(
                  '10 (the market, pizzeto,frida,lpanema,zen, cafetto,toro,ciao, le petit cochon, los gallos',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      fontWeight: FontWeight.w400),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 11,
          ),
          Image.asset(Imagesforapp.swimmingpool),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            child: Row(children: [
              Text(
                'Virtual tour : ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Constant.primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: Text(
                  '(Link)',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff03A1FA),
                  ),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(Imagesforapp.phonelocation),
          const SizedBox(
            height: 20,
          ),
        ],
      )))),
    );
  }
}
