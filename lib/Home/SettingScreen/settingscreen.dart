import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:controlla/shared/auth/routes.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List titleofbutton = [
    "Tiago",
    "Account setting",
    "Notifications",
    "Administrators",
    "Term and conditions",
    "Premium version",
    "Contact",
    "Logout"
  ];
  List buttonimage = [
    Imagesforapp.tiago,
    Imagesforapp.accountsetting,
    Imagesforapp.notification,
    Imagesforapp.administrators,
    Imagesforapp.termandcondition,
    Imagesforapp.premiumverion,
    Imagesforapp.contact,
    Imagesforapp.logout,
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
                  color: Color(0xff1EC05D),
                ),
                child: Center(
                  child: Text(
                    'Setting',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.030,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                index == 1
                                    ? Navigator.pushNamed(context, AppRoutes.AccountSettingScreen)
                                    : null;
                                index == 4
                                    ? Navigator.pushNamed(context, AppRoutes.TermandCondition)
                                    : null;
                                index == 5
                                    ? Navigator.pushNamed(context, AppRoutes.PremimumVersionScreen)
                                    : null;
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.070,
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
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.033,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.028,
                                      ),
                                      Text(
                                        titleofbutton[index],
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.022,
                                            color: Constant.primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Spacer(),
                                      CircleAvatar(
                                        radius:
                                            MediaQuery.of(context).size.height *
                                                0.023,
                                        backgroundColor:
                                            Constant.primaryColor,
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
          ),
        ),
      ),
    );
  }
}
