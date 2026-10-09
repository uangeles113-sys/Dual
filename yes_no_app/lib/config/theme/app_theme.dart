import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Color.fromARGB(255, 70, 1, 1),
  Color.fromARGB(255, 11, 0, 53),
  Color.fromARGB(255, 30, 71, 2),
  Color.fromARGB(255, 75, 1, 53),
  Color.fromARGB(255, 2, 77, 73),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Colors must be between 0 and ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
