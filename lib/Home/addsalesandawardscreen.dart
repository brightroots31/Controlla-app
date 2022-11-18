import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class AddSalesandAward extends StatefulWidget {
  const AddSalesandAward({Key? key}) : super(key: key);

  @override
  State<AddSalesandAward> createState() => _AddSalesandAwardState();
}

class _AddSalesandAwardState extends State<AddSalesandAward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Constant.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sale',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.050,
                        ),
                        Text(
                          'Awards',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'USD 0.00',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.032,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '1',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '2',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '3',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor:Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '4',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '5',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '6',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '7',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '8',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '9',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Colors.transparent,
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Constant.primaryColor,
                      child: Center(
                          child: Text(
                        '0',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.058,
                      backgroundColor: Colors.transparent,
                      child: Center(
                          child: Text(
                        '9',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.042,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    )
                  ],
                ),
              ]),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height * 0.069,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Constant.primaryColor,),
              child: Center(
                  child: Text(
                "Done",
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
      ),
    );
  }
}
