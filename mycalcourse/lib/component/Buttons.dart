import 'package:flutter/material.dart';
import 'package:mycalcourse/controllers/AjoutMontantCourse.dart';

import 'package:mycalcourse/controllers/Concat.dart';
import 'package:mycalcourse/controllers/Multiplication.dart';
import 'package:mycalcourse/view/HomeScreen.dart';
import 'package:provider/provider.dart';

List dynamicNumber = [];
Multiplication multi = Multiplication();

/* -------------------------------------------------boutton ---------------------------------------------------*/
class buttons extends StatefulWidget {
  var numberButton;
  dynamic number;

  buttons(this.numberButton, this.number);

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  final _colors = Colors.grey.withOpacity(0.5);
  Color colorstring = Colors.black;
  @override
  Widget build(BuildContext context) {
    Concat concat = Provider.of<Concat>(context);
    AjoutMontantCourse amd = Provider.of<AjoutMontantCourse>(context);
    return Container(
      width: 10,
      height: 10,
      child: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (dynamicNumber.isNotEmpty && widget.number == "X") {
                colorstring = Colors.grey;
                return;
              } else if (dynamicNumber.isEmpty &&
                  widget.number == "X" &&
                  course.isNotEmpty) {
                multi.multiplication(course);
                amd.MultiplicateAddCourse();
                colorstring = Colors.black;
              } else {
                concat.concatNumber(widget.number);
              }
            },
          );
        },
        splashColor: Colors.black,
        backgroundColor: _colors,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.numberButton,
              style: TextStyle(
                  color: colorstring,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
