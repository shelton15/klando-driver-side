import 'package:flutter/material.dart';
import 'package:klando/screens/HomeScreen.dart';

class RoundedButton extends StatelessWidget {
  final title;
  final Function onpressed;
  RoundedButton({@required this.title, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            fixedSize: const Size(370, 80),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
