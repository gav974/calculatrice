import 'package:flutter/material.dart';
import 'package:mycalcourse/controllers/Concat.dart';
import 'package:mycalcourse/view/HomeScreen.dart';

Concat concat = Concat();
List dynamicNumber = [];

/* -------------------------------------------------boutton ---------------------------------------------------*/
class buttons extends StatefulWidget {
  var numberButton;
  dynamic number;

  buttons(this.numberButton, this.number);

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            concat.concatNumber(widget.number);
          });
        },
        splashColor: Colors.black,
        backgroundColor: Colors.grey.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.numberButton,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
