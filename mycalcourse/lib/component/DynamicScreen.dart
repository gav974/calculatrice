/*--------------------------------------------------ECRAN dynamique-------------------------------------------*/
import 'package:flutter/material.dart';
import 'package:mycalcourse/controllers/Concat.dart';
import 'package:provider/provider.dart';

class DynamicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Concat concat = Provider.of<Concat>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 25, bottom: 15),
              child: Text(
                (concat.dynamicResult != "")
                    ? concat.dynamicResult + " €"
                    : "0 €",
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
