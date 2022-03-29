/*--------------------------------------------------ECRAN dynamique-------------------------------------------*/
import 'package:flutter/material.dart';

class DynamicScreen extends StatelessWidget {
  const DynamicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 25, bottom: 30),
            child: Text(
              "0.0" + " €",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
/*---------------------------------------------------------------------------------------------------------------*/
