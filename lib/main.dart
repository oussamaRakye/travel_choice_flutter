import 'package:flutter/material.dart';
import 'package:travelchice/QuestionerScreen.dart';
import 'wgets/fluidSlider.dart';
import 'city_creator.dart';
import 'listed_cities_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: QuestionnaireScreen(),
    );
  }
}
