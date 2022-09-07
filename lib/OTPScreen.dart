import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  final String phone;

  const OTPScreen(text, {Key? key, required this.phone}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                '${widget.phone} will be sent an SMS with the verification code',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
          )
        ],
      ),
    );
  }
}
