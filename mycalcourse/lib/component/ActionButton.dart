import 'package:flutter/material.dart';
import 'package:mycalcourse/component/Buttons.dart';
import 'package:provider/provider.dart';

import '../controllers/Concat.dart';

class actionButton extends StatefulWidget {
  String namedButton;
  actionButton({required this.namedButton});

  @override
  State<actionButton> createState() => _actionButtonState();
}

class _actionButtonState extends State<actionButton> {
  @override
  Widget build(BuildContext context) {
    Concat concat = Provider.of<Concat>(context);
    return Container(
      width: 100,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: (() {
            setState(() {
              if (widget.namedButton == "<-") {
                concat.modificateConcat(dynamicNumber);
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
