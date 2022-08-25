import 'package:clean_arch1/core/utils/app_colors.dart';
import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(){
  return ThemeData(
    appBarTheme:const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold
      )
    ),
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    textTheme:const TextTheme(
      button: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),

  );
}