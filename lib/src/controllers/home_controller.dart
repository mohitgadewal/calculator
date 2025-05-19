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
      onTapDel();
    } else if (value == AllButtonWidgets.clr) {
      onTapClearAll();
    } else if (value == AllButtonWidgets.per) {
      onTapPercentage();
    } else if (value == AllButtonWidgets.calculate) {
      onTapCalculate();
    } else {
      onTapAppend(value);
    }
  }

  // clear on the delete bttn
  void onTapDel() {
    if (num2.value.isNotEmpty) {
      num2.value = num2.value.substring(0, num2.value.length - 1);
    } else if (operator.value.isNotEmpty) {
      operator.value = "";
    } else if (num1.value.isNotEmpty) {
      num1.value = num1.value.substring(0, num1.value.length - 1);
    }
  }

  // clean all value
  void onTapClearAll() {
    num1.value = "";
    num2.value = "";
    operator.value = "";
  }

  // calculate percentage
  void onTapPercentage() {
    if (num1.value.isNotEmpty &&operator.value.isNotEmpty && num2.value.isNotEmpty) {
      onTapCalculate();
    }
    if (operator.value.isNotEmpty) return;

    final num = double.parse(num1.value);
    num1.value = (num / 100).toString();
  }

  // calculate value
  void onTapCalculate() {
    if (num1.value.isEmpty) return;
    if (operator.value.isEmpty) return;
    if (num2.value.isEmpty) return;

    final n1 = double.parse(num1.value);
    final n2 = double.parse(num2.value);

    var result = 0.0;

    switch (operator.value) {
      case AllButtonWidgets.add:
        result = n1 + n2;
        break;
      case AllButtonWidgets.subtract:
        result = n1 - n2;
        break;
      case AllButtonWidgets.multiply:
        result = n1 * n2;
        break;
      case AllButtonWidgets.divide:
        result = n1 / n2;
        break;
    }

    num1.value = result.toString();

    if (num1.endsWith(".0")) {
      num1.value = num1.value.substring(0, num1.value.length - 2);
    }

    operator.value = "";
    num2.value = "";
  }

  // append value to the end
  void onTapAppend(String value) {
    if (value != AllButtonWidgets.dot && int.tryParse(value) == null) {
      if (operator.value.isNotEmpty && num2.value.isNotEmpty) {
        onTapCalculate();
      }
      operator.value = value;
    }
    // assigned value to num 1
    else if (num1.isEmpty || operator.isEmpty) {
      // number be "1.2"
      if (value == AllButtonWidgets.dot && num1.value.contains(AllButtonWidgets.dot)) return;
      if (value == AllButtonWidgets.dot &&
          (num1.isEmpty || num1.value == AllButtonWidgets.n0)) {
        value = "0.";
      }

      num1.value += value;
    }
    // assugned value to num 2
    else if (num2.isEmpty || operator.isNotEmpty) {
      if (value == AllButtonWidgets.dot &&
          num2.value.contains(AllButtonWidgets.dot))
        return;
      if (value == AllButtonWidgets.dot &&
          (num2.isEmpty || num2.value == AllButtonWidgets.n0)) {
        value = "0.";
      }

      num2.value += value;
    }
  }
}
