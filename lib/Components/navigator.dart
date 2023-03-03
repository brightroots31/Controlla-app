import 'package:flutter/material.dart';

class NavigatortonextPage {
  static  navigator(context, screenName) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => screenName));
  }

}