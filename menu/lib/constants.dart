import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF462B9C);
const kSecondaryColor = Color(0xD9644AB5);

const kBoxGradient = BoxDecoration(
    gradient: LinearGradient(
  colors: [kPrimaryColor, kSecondaryColor],
  begin: Alignment.topRight,
  end: Alignment.bottomRight,
));

const kMainBackgroundGradient = BoxDecoration(
    gradient: LinearGradient(
  colors: [Color(0xFFFDFCFF), Color(0xD9FBFAFF)],
  begin: Alignment.topRight,
  end: Alignment.bottomRight,
));
