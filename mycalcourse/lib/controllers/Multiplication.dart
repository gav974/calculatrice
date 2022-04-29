import 'package:flutter/material.dart';
import 'package:mycalcourse/component/Buttons.dart';

class Multiplication {
  var lentgh;
  var value;

  void multiplication(listnumber) {
    print('listnumber.longueur: ${listnumber.length}');

    lentgh = listnumber.length;

    value = listnumber[lentgh - 1];

    listnumber.add(value);
    print('listnumber: ${listnumber}');
    return listnumber;
  }
}
