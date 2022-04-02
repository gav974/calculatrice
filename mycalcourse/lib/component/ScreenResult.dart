/*--------------------------------------------------------Ecran De resultats---------------------------------*/
import 'package:flutter/material.dart';

class ScreenResult extends StatefulWidget {
  String title;
  var result;

  ScreenResult(this.title, this.result);

  @override
  State<ScreenResult> createState() => _ScreenResultState();
}

class _ScreenResultState extends State<ScreenResult> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              widget.title.toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              widget.result.toString() + " €",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*------------------------------------------------------------------------------------------------------------*/
