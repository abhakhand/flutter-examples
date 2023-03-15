import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void themeModeChanged(ThemeMode mode) => emit(mode);

  @override
  ThemeMode fromJson(Map<String, dynamic> json) =>
      _mapStringToThemeMode(json['theme'] as String);

  @override
  Map<String, dynamic> toJson(ThemeMode state) =>
      {'theme': _mapThemeModeToString(state)};

  ThemeMode _mapStringToThemeMode(String value) {
    if (value == 'light') return ThemeMode.light;
    if (value == 'dark') return ThemeMode.dark;
    return ThemeMode.system;
  }

  String _mapThemeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
        return 'system';
    }
  }
}
