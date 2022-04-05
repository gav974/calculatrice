import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/Concat.dart';
import '../component/ActionButton.dart';
import '../component/ButtonScreen.dart';
import '../component/DynamicScreen.dart';
import '../component/ScreenResult.dart';

Concat concat = Concat();

List course = [];
num budget = 520;
var sumCourse = 0;
dynamic dynamicValue = "0";

/*--------------------------------------------------WIDGET homescreen------------------------------------------------*/
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScreenResult(
          'Mon budget ',
          budget,
        ),
        const Divider(
          height: 1,
        ),
        ScreenResult(
          'Total',
          sumCourse.toString(),
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
              namedButton: '+',
            ),
            actionButton(
              namedButton: '-',
            ),
            actionButton(
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
