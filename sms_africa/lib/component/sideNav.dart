import 'package:flutter/material.dart';
import 'package:sms_africa/constants.dart';

class Side_Navigation extends StatefulWidget {
  const Side_Navigation({
    super.key,
  });
  @override
  State<Side_Navigation> createState() => _Side_NavigationState();
}

class _Side_NavigationState extends State<Side_Navigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlueColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kWhiteLight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
                  Text(
                    'Oso Emmanuel',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Sent: 30',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Units Remaining: 30',
                        style: TextStyle(fontSize: 13.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
