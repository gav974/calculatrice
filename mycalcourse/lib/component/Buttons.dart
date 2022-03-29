import 'package:flutter/material.dart';
/* -------------------------------------------------boutton ---------------------------------------------------*/
class buttons extends StatelessWidget {
  String numberButton;

  buttons(this.numberButton);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.grey.withOpacity(0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numberButton,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}