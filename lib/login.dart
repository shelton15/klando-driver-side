import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 50),
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
              )
            ],
          ),
        )));
  }
}
