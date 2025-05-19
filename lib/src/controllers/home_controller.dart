import 'package:calculator/src/widgets/all_button_widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString num1 = "".obs; // [0-9]
  RxString num2 = "".obs; // [0-9]
  RxString operator = "".obs; // [+,-,*,/]

  // check the value contains a Del,AC,%
  bool checkValue(value) {
    if (value.contains(AllButtonWidgets.del) ||
        value.contains(AllButtonWidgets.clr) ||
        value.contains(AllButtonWidgets.per)) {
      return true;
    } else {
      return false;
    }
  }

  // check the value contains a operator
  bool checkOperator(value) {
    if (value.contains(AllButtonWidgets.divide) ||
        value.contains(AllButtonWidgets.multiply) ||
        value.contains(AllButtonWidgets.subtract) ||
        value.contains(AllButtonWidgets.add) ||
        value.contains(AllButtonWidgets.calculate)) {
      return true;
    } else {
      return false;
    }
  }

  // add num2 and operator in num1
  void onTapAdd(value) {
    if (value == AllButtonWidgets.del) {
      onTapClear();
    } else if (value == AllButtonWidgets.clr) {
      onTapClearAll();
    } else {
      num1.value += value;
    }
  }

  // clear one by one value from num1
  void onTapClear() {
    num1.value = num1.value.substring(0, num1.value.length - 1);
  }

  // clean all value
  void onTapClearAll() {
    num1.value = "";
    num2.value = "";
    operator.value = "";
  }
}
