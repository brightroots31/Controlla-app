import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  color:  Color(0xff1EC05D),),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Imagesforapp.arrow_back_simple,
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Text(
                    'OCTOBER',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.030,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Image.asset(
                    Imagesforapp.arrow_forward_simple,
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                ],
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.046,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.050,
                ),
                Text(
                  'CONTRACTS',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'SALES',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'COMMISION',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.050,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.040,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
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
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(children: [
                                    Text(
                                      'CLOSER',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          fontWeight: FontWeight.w500,
                                          color: Constant.primaryColor,),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.030,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.250,
                                          child: Text(
                                            '11 Oct 2022',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.019,
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.250,
                                          child: Text(
                                            '33,000.00',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.024,
                                                color: Constant.primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.250,
                                          child: Text(
                                            '12,903.00',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.019,
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '30.00%',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          fontWeight: FontWeight.w500,
                                          color: Constant.primaryColor,),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      );
                    })),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.030,
                    ),
                    Text(
                      'Volume',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.020,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.190,
                      child: Text(
                        'USD 66,000.00',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.020,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )),
            ),
            Container(
              decoration: BoxDecoration(
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Next Paycheck',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          '17 October',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.020,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Expanded(
                        child: Text(
                      '51,931.4',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          fontWeight: FontWeight.w600),
                    )),
                    Image.asset(
                      Imagesforapp.arrowforward,
                      height: MediaQuery.of(context).size.width * 0.050,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                  ],
                )),
              ),
            )
          ],
        )),
      ),
    );
  }
}
