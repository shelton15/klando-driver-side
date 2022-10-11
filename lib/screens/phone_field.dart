import 'package:flutter/material.dart';

import 'package:intl_phone_field_improve/countries.dart';
import 'package:intl_phone_field_improve/intl_phone_field.dart';
import 'package:intl_phone_field_improve/phone_number.dart';
import 'package:klando/screens/verify_screen.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: Column(
            children: [
              Center(
                  child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 10, left: 100, right: 100),
                child: Image.asset('assets/Cardrivingbro1.png'),
              )),
              Center(
                child: Text(
                  'Enter Your Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'CM',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size(170, 80),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OTPScreen()));
                  },
                  child: const Text(
                    'Send OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
