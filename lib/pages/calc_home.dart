import 'dart:developer';

import 'package:calc_app/constants..dart';
import 'package:flutter/material.dart';

import '../widgets/components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late num firstValue;
  late num secondValue;
  String result = "0";
  late String displayText = "0";
  late String operator;
  String history = "";
  String previousButton = "";

  _callBack(String text) {
    if (text == "AC") {
      displayText = "0";
      firstValue = 0;
      secondValue = 0;
      result = "0";
      history = '';
    } else if (text == "C") {
      displayText = "0";
      firstValue = 0;
      secondValue = 0;
      result = "0";
    } else if (text == 'cancel') {
      if (result.length == 1) {
        result = "0";
      } else {
        result = displayText.substring(0, displayText.length - 1);
      }
    } else if (text == "+/-") {
      if (displayText[0] != "-") {
        result = "-$displayText";
      } else {
        result = displayText.substring(1);
      }
    } else if (text == "%") {
      result = (firstValue + num.parse(displayText) / 100).toString();
      history = "$firstValue + ${num.parse(displayText) / 100}";
    } else if (text == "+" || text == "/" || text == "X" || text == "-") {
      firstValue = num.parse(displayText);
      result = "0";
      operator = text;
    } else if (text == ".") {
      if (!result.contains(".")) {
        log(text);
        result = "$result.";
      }
    } else if (text == "=") {
      secondValue = num.parse(displayText);

      if (operator == '+') {
        result = (firstValue + secondValue).toString();
        history = "$firstValue + $secondValue";
      }
      if (operator == '-') {
        result = (firstValue - secondValue).toString();
        history = "$firstValue - $secondValue";
      }
      if (operator == 'X') {
        result = (firstValue * secondValue).toString();
        history = "$firstValue X $secondValue";
      }
      if (operator == '/') {
        result = (firstValue / secondValue).toString();
        history = "$firstValue / $secondValue";
      }
    } else {
      if (previousButton == "=") {
        result = text;
      } else {
        result = num.parse(displayText + text).toString();
      }
    }

    setState(() {
      displayText = result.toString();
    });

    previousButton = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        title: const Text(
          "Calc Home",
          style: TextStyle(color: textColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
                decoration: const BoxDecoration(),
                child: Text(
                  history,
                  style: const TextStyle(
                    fontSize: 20,
                    color: textColor,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
                decoration: const BoxDecoration(),
                child: Text(
                  displayText,
                  style: const TextStyle(
                    fontSize: 36,
                    color: textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => _callBack("cancel"),
                      icon: const Icon(
                        Icons.cancel_presentation_outlined,
                        color: fillColor2,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: textColor, thickness: 2.5),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButtonContainer(
                    text: "AC",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "C",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "%",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "/",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButtonContainer(
                    text: "7",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "8",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "9",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "X",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButtonContainer(
                    text: "4",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "5",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "6",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "-",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButtonContainer(
                    text: "1",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "2",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "3",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "+",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalcButtonContainer(
                    text: "+/-",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "0",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: ".",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor1,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "=",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
                    callBack: _callBack,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// extension StringModify on String {
//   modifyDisplayText() {
//     if (endsWith(".0")) {
//       return substring(0, length - 1);
//     }
//     return this;
//   }
// }
