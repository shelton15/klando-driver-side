import 'package:flutter/material.dart';

import 'package:intl_phone_field_plus/countries.dart';
import 'package:intl_phone_field_plus/extensions/string.dart';
import 'package:intl_phone_field_plus/intl_phone_field.dart';
import 'package:intl_phone_field_plus/phone_number.dart';

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
                padding: const EdgeInsets.only(
                    top: 5, bottom: 10, left: 60, right: 60),
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
              )
            ],
          ),
        ));
  }
}
