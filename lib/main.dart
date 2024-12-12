
import 'package:bmi_app/app_theme.dart';
import 'package:flutter/material.dart';
import 'bmi_app/bmi_app.dart';
import 'bmi_app/bmi_result.dart';

void main() {
  runApp( BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: BmiCalculator.routeName,
      debugShowCheckedModeBanner: false,
  routes: {
    BMIResult.routeName:(_)=>BMIResult(),
    BmiCalculator.routeName:(_)=>BmiCalculator(),
  },

      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
    );

  }
}

