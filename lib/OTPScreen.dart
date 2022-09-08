import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:klando/HomeScreen.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  final String phone;

  OTPScreen({required this.phone});

  @override
  State<OTPScreen> createState() => _OTPScreenState(phone);
}

class _OTPScreenState extends State<OTPScreen> {
  final String phone;

  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();

  String? verificationCode;

  _OTPScreenState(this.phone);

  @override
  void initState() {
    super.initState();

    verifyPhoneNumber();
  }

  verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${phone}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (c) => HomeScreen()));
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.message.toString()),
          duration: Duration(seconds: 3),
        ));
      },
      codeSent: (String vID, int? resendToken) {
        setState(() {
          verificationCode = vID;
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          verificationCode = vID;
        });
      },
      timeout: Duration(seconds: 60),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              'assets/Cardrivingbro1.png',
              width: 180,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  verifyPhoneNumber();
                },
                child: Text(
                  "Verifying : ${phone}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Pinput(
                focusNode: _pinOTPCodeFocus,
                controller: _pinOTPCodeController,
                pinAnimationType: PinAnimationType.rotation,
                onSubmitted: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verificationCode!, smsCode: pin))
                        .then((value) {
                      if (value.user != null) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) => HomeScreen()));
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Invalid  OTP"),
                      duration: Duration(seconds: 3),
                    ));
                  }
                }),
          )
        ],
      ),
    );
  }
}
