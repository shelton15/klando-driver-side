import 'package:flutter/material.dart';
import 'package:klando/screens/auth_screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                top: 110,
                right: 40,
              ),
              child: Text(
                'K L A N D O',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.secondaryContainer),
              ),
            ),
          ),
          Center(
            child: Text(
              'Your Comfort Is Our Priority',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 10),
            child: Image.asset('assets/Cardrivingrafiki.png'),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 80, bottom: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: const Size(370, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AuthScreen()));
              },
              child: const Text(
                'Get Started',
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
