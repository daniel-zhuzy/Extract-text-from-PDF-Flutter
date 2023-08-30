import 'package:flutter/material.dart';

Widget gestureDetectorWidget({
  required VoidCallback onTap,
  required String title,
  required double width,
  required double height,
  double horizontal = 2,
  double vertical = 2,
  double fontSize = 14,
  String fontName = "Montserrat",
  Color backColor = const Color.fromARGB(235, 255, 123, 0),
  Color fontColor = Colors.white,
  FontWeight fontWeight = FontWeight.w400,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      )),
    ),
  );
}
