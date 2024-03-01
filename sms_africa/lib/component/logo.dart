import 'package:flutter/material.dart';
import 'package:sms_africa/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.mail_outline,
          color: kRedColor,
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'SMS',
          style: TextStyle(
              color: kDarkBlueColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'AFRICA',
          style: TextStyle(
              color: kRedColor, fontSize: 30.0, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
