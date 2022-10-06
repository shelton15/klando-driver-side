import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          top: true,
          child: Scaffold(
            body: Column(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 10),
                  child: Image.asset('assets/Cardrivingvro1.png'),
                ))
              ],
            ),
          )),
    );
  }
}
