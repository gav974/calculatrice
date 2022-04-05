import 'dart:io';

import 'package:flutter/material.dart';

import '../component/Buttons.dart';
import '../view/HomeScreen.dart';

class Concat with ChangeNotifier {
/*---------------   ajouter la valeur numérique -----------------------*/

  void concatNumber(nombre) {
    if (nombre == "X") {
      //multiplicate
      return null;
    }

    if (nombre == 0 && dynamicNumber.isEmpty == true) {
      return null;
    }

    if (dynamicNumber.length >= 6) {
      return;
    } else {
      dynamicNumber.add(nombre); //ajoute une valeur dans une liste
      dynamicValue = dynamicNumber.join(); //concatene la valeur

    }

    print("dynamicNumber $dynamicNumber");
    print("dynamicvalue $dynamicValue");

    notifyListeners();
  }
/*-----------------------------------------------------------------------*/

/*---------------   modifier la valeur numérique -----------------------*/
  void modificateConcat(number) {
    if (number.length == 1 && number[0] >= 1) {
      dynamicNumber.clear();
    } else if (number.length >= 2) {
      dynamicNumber.removeLast();
    }

    dynamicValue = dynamicNumber.join();

    print("dynamicNumber $dynamicNumber");
    print("dynamicvalue $dynamicValue");

    notifyListeners();
  }

  void eraseDynamicValue() {
    dynamicNumber.clear();
    dynamicValue = "0";
    notifyListeners();
  }

/*------------------------------------------------------------------*/

  String get dynamicResult => dynamicValue.toString();
}
