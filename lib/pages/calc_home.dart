import 'dart:developer';

import 'package:calc_app/constants..dart';
import 'package:flutter/material.dart';

import '../widgets/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  _callBack(text) {
    log(text);
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
                child: const Text(
                  '78X9',
                  style: TextStyle(
                    fontSize: 36,
                    color: textColor,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
                decoration: const BoxDecoration(),
                child: const Text(
                  '789',
                  style: TextStyle(
                    fontSize: 20,
                    color: textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.cancel_presentation_outlined,
                      color: fillColor2,
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
                    text: "C",
                    textColor: textColor,
                    textSize: 24,
                    fillColor: fillColor,
                    callBack: _callBack,
                  ),
                  CalcButtonContainer(
                    text: "( )",
                    textColor: textColor1,
                    textSize: 24,
                    fillColor: fillColor2,
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
