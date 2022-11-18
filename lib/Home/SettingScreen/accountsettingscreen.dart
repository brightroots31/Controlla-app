import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
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
                        'Account Setting',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.030,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.030),
              alignment: Alignment.centerLeft,
              child: Text(
                'Whats your position?',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: MediaQuery.of(context).size.height * 0.069,
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'CLOSER',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          color: Constant.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Constant.primaryColor,
                      size: MediaQuery.of(context).size.height * 0.060,
                    )
                  ],
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.030),
              alignment: Alignment.centerLeft,
              child: Text(
                'ABC',
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: MediaQuery.of(context).size.height * 0.069,
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'A',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          color: Constant.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Constant.primaryColor,
                      size: MediaQuery.of(context).size.height * 0.060,
                    )
                  ],
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.030),
              alignment: Alignment.centerLeft,
              child: Text(
                "WHATS'S YOUR HOTEL?",
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: MediaQuery.of(context).size.height * 0.069,
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'HARD ROCK CANCUN',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          color: Constant.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Constant.primaryColor,
                      size: MediaQuery.of(context).size.height * 0.060,
                    )
                  ],
                ),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.030),
              alignment: Alignment.centerLeft,
              child: Text(
                "DISCOUNT CANCELATION FUND",
                style: TextStyle(
                    color: Constant.primaryColor,
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              height: MediaQuery.of(context).size.height * 0.069,
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
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Row(
                  children: [
                    Text(
                      'Change Password',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          color: Constant.primaryColor ,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Constant.primaryColor,
                      size: MediaQuery.of(context).size.height * 0.060,
                    )
                  ],
                ),
              )),
            ),
          const  SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height * 0.069,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Constant.primaryColor,),
              child: Center(
                  child: Text(
                "SAVE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height * 0.022),
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
          ],
        )),
      )),
    );
  }
}
