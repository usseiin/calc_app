import 'package:flutter/material.dart';

class CalcButtonContainer extends StatelessWidget {
  const CalcButtonContainer({
    Key? key,
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.callBack,
    required this.textSize,
  }) : super(key: key);
  final String text;
  final Color fillColor;
  final Color textColor;
  final Function callBack;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBack(text) ?? {},
      child: Container(
        width: 70,
        height: 70,
        margin: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: textSize, color: textColor),
        ),
      ),
    );
  }
}
