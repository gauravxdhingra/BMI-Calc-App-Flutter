import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';
import './screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          body2: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          display1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: InputPage(),
      routes: {
        '/': (context) => InputPage(),
        ResultScreen.routeName: (context) => ResultScreen(),
        InputPage.routeName: (context) => InputPage(),
      },
    );
  }
}
