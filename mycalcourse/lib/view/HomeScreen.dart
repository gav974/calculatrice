import 'package:flutter/material.dart';
import 'package:mycalcourse/view/Saisiebudget.dart';
import 'package:mycalcourse/controllers/AjoutMontantCourse.dart';
import 'package:provider/provider.dart';
import '../component/ActionButton.dart';
import '../component/ButtonScreen.dart';
import '../component/DynamicScreen.dart';
import '../component/ScreenResult.dart';

List course = [];

var sumCourse = 0;
String dynamicValue = "0";

/*--------------------------------------------------WIDGET homescreen------------------------------------------------*/
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    AjoutMontantCourse amc = Provider.of<AjoutMontantCourse>(context);
    return Column(
      children: [
        ScreenResult(
          'Mon budget ',
          budget.text,
        ),
        const Divider(
          height: 1,
        ),
        ScreenResult(
          'Total',
          (amc.sommeCourse == null) ? "0" : '${amc.sommeCourse}',
        ),
        const Divider(
          height: 1,
        ),
        DynamicScreen(),
        Expanded(
          flex: 1,
          child: buttonScreen(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            actionButton(
              colorAction: Colors.green,
              namedButton: '+',
            ),
            actionButton(
              colorAction: Colors.red,
              namedButton: '-',
            ),
            actionButton(
              colorAction: Colors.orange,
              namedButton: '<-',
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}




/*------------------------------------------------------------------------------------------------------------------------*/
