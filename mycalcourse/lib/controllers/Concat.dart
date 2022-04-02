import '../component/Buttons.dart';
import '../view/HomeScreen.dart';

class Concat {
  void concatNumber(nombre) {
    if (nombre == "X") {
      //course.removeLast();
      return null;
    } else {
      dynamicNumber.add(nombre);
    }

    dynamicValue = dynamicNumber.join();
    print("dynamicNumber $dynamicNumber");
    print("dynamicvalue $dynamicValue");
  }

  String get dynamicResult {
    return dynamicValue.toString();
  }
}
