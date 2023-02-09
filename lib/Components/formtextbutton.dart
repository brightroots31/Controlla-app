// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:controlla/shared/auth/constant.dart';
import 'package:flutter/material.dart';

class FormTextButton extends StatefulWidget {
  final buttontitle;
  final onpressed;
  final buttontitlestyle;
  const FormTextButton(
      {Key? key, this.buttontitle, this.onpressed, this.buttontitlestyle})
      : super(key: key);

  @override
  State<FormTextButton> createState() => _FormTextButtonState();
}
                
class _FormTextButtonState extends State<FormTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpressed,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.069,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color:  Constant.primaryColor),
        child: Center(
            child: Text(
          widget.buttontitle,
          style: widget.buttontitlestyle,
        )),
      ),
    );
  }
}
