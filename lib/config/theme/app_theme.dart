import 'package:flutter/material.dart';

const colorList = [
  Colors.amberAccent,
  Colors.blue,
  Colors.black,
  Colors.red,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
        assert(selectedColor < colorList.length, 'Color not defined');
  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[ selectedColor]
  );
}
