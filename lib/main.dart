// import 'dart:html';

import 'package:edukart/pages/category_meals.dart';
import 'package:flutter/material.dart';
import './pages/categories.dart';
import './pages/meal_detailPage.dart';
import './models/category.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduKart',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        platform: TargetPlatform.iOS,
        fontFamily: 'PatrickHand',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: Categories(),
      routes: {
        category_meals.routeName: (context) => category_meals(),
        MealDetail.routeName: (context) => MealDetail()
      },
    );
  }
}
