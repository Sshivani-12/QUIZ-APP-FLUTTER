import 'package:flutter/material.dart';
import 'package:rait_online_portal/components/scaffold_MyAppBar.dart';
import 'package:rait_online_portal/components/gesture_Button.dart';
import 'package:rait_online_portal/constants.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      label: 'STUDENT PORTAL',
      containerContent: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Are U Registered ?',
                style: kPageHeadingTextStyle,
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            GestureButton(
              label: 'YES',
              onTap: () {
                Navigator.pushNamed(context, '/student_login');
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureButton(
              label: 'No',
              onTap: () {
                Navigator.pushNamed(context, '/student_register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
