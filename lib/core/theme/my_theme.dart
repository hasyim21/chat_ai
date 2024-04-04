import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyTheme {
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: MyColors.primary,
    scaffoldBackgroundColor: MyColors.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: MyColors.primary,
      surfaceTintColor: Colors.transparent,
    ),
  );
}
