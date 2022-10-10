import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(top: 10, bottom: 10),
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
              )
            ],
          ),
        ));
  }
}
