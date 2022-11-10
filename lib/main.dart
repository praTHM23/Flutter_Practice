import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var name = "Prathamesh!! Naikwfwfw";

  @override
  Widget build(BuildContext context) {
    //context tells the position where the homepage is where the material ui is
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily), //used for light theme
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
      initialRoute: "/home", //userd for dark theme
      routes: {
        "/": ((context) => LoginPage()),
        MyRoutes.homeRoute: ((context) => HomePage()),
        MyRoutes.loginRoute: ((context) => LoginPage())
      },
    );
  }
}
