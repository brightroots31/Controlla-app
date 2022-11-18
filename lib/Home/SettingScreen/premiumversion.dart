import 'package:controlla/Components/formtextbutton.dart';
import 'package:controlla/Components/images.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class PremimumVersionScreen extends StatefulWidget {
  const PremimumVersionScreen({Key? key}) : super(key: key);

  @override
  State<PremimumVersionScreen> createState() => _PremimumVersionScreenState();
}

class _PremimumVersionScreenState extends State<PremimumVersionScreen> {
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
                        'Premium Version',
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
            const SizedBox(
              height: 20,
            ),
            Text(
              'Have Control Of Your Finances',
              style: TextStyle(
                  color: Constant.primaryColor,
                  fontSize: MediaQuery.of(context).size.height * 0.027,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 90,
              child: FormTextButton(
                buttontitle: "Sign Up Now",
                buttontitlestyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.027,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '1 : No Ads',
              style: TextStyle(
                  color: Constant.primaryColor,
                  fontSize: MediaQuery.of(context).size.height * 0.027,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: Image.asset(Imagesforapp.premium_verion)),
            const SizedBox(
              height: 12,
            ),
            Text(
              '2 : we calculate your comissions \n for you',
              style: TextStyle(
                  color: Constant.primaryColor,
                  fontSize: MediaQuery.of(context).size.height * 0.027,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12,
            ),
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
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '11 Oct 2022',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '33,000.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.024,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '12,903.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '30.00%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
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
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '11 Oct 2022',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '33,000.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.024,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '12,903.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '30.00%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
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
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '11 Oct 2022',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '33,000.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.024,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '12,903.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '30.00%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
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
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.030,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '11 Oct 2022',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '33,000.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.024,
                                color: Constant.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.250,
                          child: Text(
                            '12,903.00',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.019,
                                color: Colors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '30.00%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Constant.primaryColor,),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '2 : learn how much comes on your \nnext paycheck',
              style: TextStyle(
                  color: Constant.primaryColor,
                  fontSize: MediaQuery.of(context).size.height * 0.027,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
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
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )),
      )),
    );
  }
}
