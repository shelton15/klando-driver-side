import 'dart:async';

import 'package:flutter/material.dart';
import 'package:klando/getstarted.dart';
import 'package:lottie/lottie.dart';

class LottiScreen extends StatefulWidget {
  const LottiScreen({Key? key}) : super(key: key);

  @override
  _LottiScreenState createState() => _LottiScreenState();
}

class _LottiScreenState extends State<LottiScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const GetStarted()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Lottie.asset("assets/animations/63139-car-animation.json"),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * 0.3,
              bottom: 30,
              child: const Center(
                child: Text(
                  'K L A N D O',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ))
        ],
      ),
    );
  }
}
