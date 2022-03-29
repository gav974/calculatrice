import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycalcourse/view/HomeScreen.dart';

/*------------------------------------- App start-------------------------------------------*/
void main() async {
  runApp(MyApp());

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}
/*--------------------------------------------------------------------------------------------- */

/*------------------------------------------------------initialisation homescreen -----------------------------------*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: courseCalc(),
    );
  }
}

class courseCalc extends StatefulWidget {
  const courseCalc({Key? key}) : super(key: key);

  @override
  State<courseCalc> createState() => _courseCalcState();
}

class _courseCalcState extends State<courseCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcul Mes Courses'),
        centerTitle: true,
      ),
      body: SafeArea(child: homeScreen()),
    );
  }
}
/*------------------------------------------------------------------------------------------------------------------*/