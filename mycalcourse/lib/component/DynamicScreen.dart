/*--------------------------------------------------ECRAN dynamique-------------------------------------------*/
import 'package:flutter/material.dart';
import 'package:mycalcourse/component/Buttons.dart';
import 'package:mycalcourse/controllers/Concat.dart';
import 'package:mycalcourse/view/HomeScreen.dart';

Concat concat = Concat();

class DynamicScreen extends StatefulWidget {
  @override
  State<DynamicScreen> createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  @override
  void initState() {
    super.initState();
    setState(() {});

    // Additional initialization of the State
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 25, bottom: 15),
              child: Text(
                concat.dynamicResult + " €",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
/*---------------------------------------------------------------------------------------------------------------*/
