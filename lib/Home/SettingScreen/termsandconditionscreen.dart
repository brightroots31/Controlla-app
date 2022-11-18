import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class TermandCondition extends StatefulWidget {
  const TermandCondition({Key? key}) : super(key: key);

  @override
  State<TermandCondition> createState() => _TermandConditionState();
}

class _TermandConditionState extends State<TermandCondition> {
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
                        'Term and Condition',
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
              height: 30,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas semper tempus amet nibh nunc pulvinar donec sapien. Quis tortor tempus aenean fermentum, pellentesque ornare lectus. Tellus convallis libero convallis blandit. Aliquet id vulputate odio sit. Gravida feugiat a nunc eget et lacus porta varius. Blandit pellentesque sem fermentum consectetur risus adipiscing iaculis leo at. Malesuada ac odio sit pharetra quis. Ultrices consequat sagittis at ultricies tellus molestie. Viverra semper amet, sagittis, sit ultrices ac. Faucibus odio mauris porttitor rhoncus turpis quam. Pharetra turpis massa lorem ut. Dis et est id facilisis.',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.027,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w600),
                ))
          ],
        )),
      )),
    );
  }
}
