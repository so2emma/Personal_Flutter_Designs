import 'package:flutter/material.dart';

//Application Custom Colors
const kDarkBlueColor = Color(0xFF041562);
const kRedColor = Color(0xFFDA1212);
const kLightBlueColor = Color(0xFF11468F);
const kWhiteLight = Color(0xFFEEEEEE);

const kInputDecoration = InputDecoration(
  labelText: 'Email',
  hintText: "Enter email",
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF041562), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF041562), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);
