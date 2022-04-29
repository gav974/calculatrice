import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mycalcourse/component/Buttons.dart';
import 'package:mycalcourse/view/HomeScreen.dart';

class AjoutMontantCourse with ChangeNotifier {
  var sommeCourse;

  void addCourse() {
    if (double.parse(dynamicValue) == 0.0) {
      return;
    } else {
      course.add(double.parse(dynamicValue));
      sommeCourse = 0;
      for (var i = 0; i < course.length; i++) {
        sommeCourse += course[i];
      }
    }
    print("sommeCourse ${sommeCourse}");
    print("course ${course}");

    notifyListeners();
  }

  void MultiplicateAddCourse() {
    sommeCourse = 0;
    for (var i = 0; i < course.length; i++) {
      sommeCourse += course[i];
    }

    notifyListeners();
  }

  void deleteCourse(number) {
    if (number.length == 1) {
      course.clear();
      sommeCourse = 0;
    } else if (number.length >= 2) {
      course.removeLast();
      sommeCourse = 0;
      /*---*/
      for (var i = 0; i < course.length; i++) {
        sommeCourse += course[i];
      }
      /*--- */

      print("course ${course}");
    }

    notifyListeners();
  }

  num get sumCourse => sommeCourse;
}
