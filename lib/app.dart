import 'package:clean_arch1/config/routes/app_routes.dart';
import 'package:clean_arch1/config/themes/app_theme.dart';
import 'package:clean_arch1/core/utils/app_colors.dart';
import 'package:clean_arch1/core/utils/app_strings.dart';
import 'package:clean_arch1/features/random_quote/presentation/screens/quote_screen.dart';
import 'package:flutter/material.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName ,
      theme:appTheme() ,
      onGenerateRoute:AppRoutes.onGenerateRoute ,
    );
  }
}
