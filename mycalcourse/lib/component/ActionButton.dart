import 'package:flutter/material.dart';
import 'package:mycalcourse/component/Buttons.dart';
import 'package:mycalcourse/controllers/AjoutMontantCourse.dart';
import 'package:mycalcourse/view/HomeScreen.dart';
import 'package:provider/provider.dart';

import '../controllers/Concat.dart';

class actionButton extends StatefulWidget {
  String namedButton;
  Color colorAction;

  actionButton({required this.colorAction, required this.namedButton});

  @override
  State<actionButton> createState() => _actionButtonState();
}

class _actionButtonState extends State<actionButton> {
  @override
  Widget build(BuildContext context) {
    Concat concat = Provider.of<Concat>(context);
    AjoutMontantCourse amc = Provider.of<AjoutMontantCourse>(context);
    return Container(
      width: 100,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: widget.colorAction),
          onPressed: (() {
            setState(() {
              if (widget.namedButton == "<-") {
                concat.modificateConcat(dynamicNumber);
              } else if (widget.namedButton == "+") {
                amc.addCourse();
                concat.eraseDynamicValue();
              } else if (widget.namedButton == "-") {
                amc.deleteCourse(course);
                concat.eraseDynamicValue();
              }
            });
          }),
          child: Text(
            widget.namedButton,
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
