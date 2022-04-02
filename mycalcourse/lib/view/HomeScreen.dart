import 'package:flutter/material.dart';
import '../controllers/Concat.dart';
import '../component/ActionButton.dart';
import '../component/ButtonScreen.dart';
import '../component/DynamicScreen.dart';
import '../component/ScreenResult.dart';

Concat concat = Concat();

late List course;
late double budget;
var sumCourse;
dynamic dynamicValue;

/*--------------------------------------------------widget homescreen------------------------------------------------*/
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  void initState() {
    super.initState();
    course = [];
    budget = 250;
    sumCourse = 0;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        ScreenResult(
          'Mon budget ',
          budget,
        ),
        Divider(
          height: 3,
        ),
        ScreenResult(
          'Total',
          sumCourse.toString(),
        ),
        Divider(
          height: 3,
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
              namedButton: '=',
            ),
            actionButton(
              namedButton: 'C',
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
