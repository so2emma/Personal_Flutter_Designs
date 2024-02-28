import 'package:flutter/material.dart';

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
          color: Color(0xFFDA1212),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'SMS',
          style: TextStyle(
              color: Color(0xFF041562),
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'AFRICA',
          style: TextStyle(
              color: Color(0xFFDA1212),
              fontSize: 30.0,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
