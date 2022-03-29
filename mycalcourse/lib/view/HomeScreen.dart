import 'package:flutter/material.dart';

import '../component/ButtonScreen.dart';
import '../component/DynamicScreen.dart';
import '../component/ScreenResult.dart';

/*--------------------------------------------------widget homescreen------------------------------------------------*/
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
        ScreenResult('Mon budget ', 250),
        Divider(
          height: 3,
        ),
        ScreenResult('Total', 35.25),
        Divider(
          height: 3,
        ),
        DynamicScreen(),
        buttonScreen()
      ],
    );
  }
}



/*------------------------------------------------------------------------------------------------------------------------*/
