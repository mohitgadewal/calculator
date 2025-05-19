import 'package:calculator/core/theme/app_colors.dart';
import 'package:calculator/src/controllers/home_controller.dart';
import 'package:calculator/src/widgets/all_button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var homeCon = HomeController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Obx(
                    () => Text(
                      "${homeCon.num1}${homeCon.operator}${homeCon.num2}"
                              .isEmpty
                          ? "0"
                          : "${homeCon.num1}${homeCon.operator}${homeCon.num2}",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: AppColors.darkPrimaryText,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Wrap(
              children:
                  AllButtonWidgets.buttonValues.map((value) {
                    return InkWell(
                      onTap: () => homeCon.onTapAdd(value),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        width: screenSize.width / 4,
                        height: screenSize.width / 5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              homeCon.checkValue(value)
                                  ? Color(0xff505050)
                                  : homeCon.checkOperator(value)
                                  ? Color(0xffFF9500)
                                  : AppColors.darkPrimaryBackgorund,
                        ),
                        child: buildButtons(value),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButtons(value) {
    // when AC bttn
    if (value == AllButtonWidgets.clr) {
      return Text(
        value,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(color: AppColors.darkPrimaryText),
      );
    }
    // when value is empty
    else if (value == "") {
      return Icon(Icons.calculate, size: 5.h);
    }
    // when del bttn
    else if (value == AllButtonWidgets.del) {
      return Icon(Icons.backspace_outlined, size: 4.h);
    }
    // orange color text
    else if (homeCon.checkOperator(value)) {
      return Text(
        value,
        style: Theme.of(
          context,
        ).textTheme.displayMedium!.copyWith(color: AppColors.darkPrimaryText),
      );
    }
    // when other bttn
    return Text(
      value,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
        color: AppColors.darkPrimaryText,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
