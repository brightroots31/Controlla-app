import 'package:controlla/Components/navigator.dart';
import 'package:controlla/Home/infoscreen/hoteldetail.dart';
import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  List buttontitle = [
    "Hard rock cancun",
    "Hard rock riviera maya",
    "hard rock punta cana",
    "hard rock puerto vallarta",
    "hard rock los cabos",
    "riviera cancun",
    "unico 2087",
    "eden roc",
    "nobu chicago",
    "nobu miami",
    "nobu los cabos"
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
                          'Hotel   ',
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
              Expanded(
                  child: ListView.builder(
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                NavigatortonextPage.navigator(
                                    context,
                                    HotelDetailsScreen(
                                      title: buttontitle[index],
                                    ));
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
                                  width: MediaQuery.of(context).size.width - 40,
                                  child: Row(
                                    children: [
                                      Text(
                                        buttontitle[index],
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.023,
                                            fontWeight: FontWeight.w600,
                                            color: Constant.primaryColor,),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xff1EC05D),
                                      )
                                    ],
                                  ),
                                )),
                              ),
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
