import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  final List<ThemeData> _themes = [
    AppTheme.davidTheme,
    AppTheme.lucyTheme,
    AppTheme.rebeccaTheme,
  ];

  final List<String> _names = [
    'Modo: David Martinez',
    'Modo: Lucy Kushinada',
    'Modo: Rebecca',
  ];

  ThemeData get currentTheme => _themes[_currentIndex];
  String get themeName => _names[_currentIndex];

  void nextTheme() {
    _currentIndex = (_currentIndex + 1) % _themes.length;
    notifyListeners();
  }
}
