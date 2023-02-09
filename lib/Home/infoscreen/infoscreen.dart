import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List titleofbutton = [
    "Membership"
  ];
  List buttonimage = [
    Imagesforapp.membership
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: const BoxDecoration(
                color: Constant.primaryColor
            ),
            child: Center(
              child: Text(
                'Info',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.030,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            index == 2
                                ? Navigator.pushNamed(context, AppRoutes.HotelScreen)
                                : null;
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.070,
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
                                child: SizedBox(
                              width: MediaQuery.of(context).size.width - 30,
                              child: Row(
                                children: [
                                  Image.asset(
                                    buttonimage[index],
                                    color: Constant.primaryColor,
                                    height: MediaQuery.of(context).size.height *
                                        0.033,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.028,
                                  ),
                                  Text(
                                    titleofbutton[index],
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.022,
                                        color: Constant.primaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                  CircleAvatar(
                                    radius: MediaQuery.of(context).size.height *
                                        0.023,
                                    backgroundColor: Constant.primaryColor,
                                    child: const Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )),
                                  )
                                ],
                              ),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        )
                      ],
                    );
                  }))
        ],
      ))),
    );
  }
}
