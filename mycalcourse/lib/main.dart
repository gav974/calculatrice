import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mycalcourse/controllers/AjoutMontantCourse.dart';
import 'package:mycalcourse/controllers/Concat.dart';
import 'package:mycalcourse/view/HomeScreen.dart';
import 'package:mycalcourse/view/Saisiebudget.dart';
import 'package:provider/provider.dart';

/*------------------------------------- App start-------------------------------------------*/
void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Concat>(create: (_) => Concat()),
        ChangeNotifierProvider<AjoutMontantCourse>(
          create: (_) => AjoutMontantCourse(),
        ),
      ],
      child: MyApp(),
    ),
  );

  if (Platform.isAndroid) {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  } else {
    return null;
  }
}

/*--------------------------------------------------------------------------------------------- */

/*------------------------------------------------------initialisation homescreen -----------------------------------*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SaisieBudget(),
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
      body: SafeArea(
        child: homeScreen(),
      ),
    );
  }
}
/*------------------------------------------------------------------------------------------------------------------*/