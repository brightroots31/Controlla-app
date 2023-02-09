// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final hinttext;
  final controller;
  final obscuretext;
  const TextInputField({Key? key, this.hinttext, this.controller, this.obscuretext})
      : super(key: key);

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.031),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.obscuretext,
          decoration: InputDecoration(
            hintText: widget.hinttext,
            hintStyle: TextStyle(
                color: const Color(0xff000000).withOpacity(0.5),
                fontSize: MediaQuery.of(context).size.height * 0.017),
            border: InputBorder.none,
          ),
        ),
      )),
    );
  }
}
