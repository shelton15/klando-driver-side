import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:klando/OTPScreen.dart';

class Verification extends StatefulWidget {
  Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late String verID;
  late String phone;
  bool codeSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/Cardrivingbro1.png',
                  width: 180,
                ),
              ),
              Center(
                child: Text(
                  'Enter Your Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.secondaryContainer),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'CM',
                  onChanged: (phoneNumber) {
                    setState(() {
                      phone = phoneNumber.completeNumber;
                    });
                  },
                ),
              )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: const Size(200, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Send OTP',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 30,
                          color: Colors.white)),
                ),
              ))
            ],
          ),
        )));
  }
}
