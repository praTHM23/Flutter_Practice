import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cards_page.dart';
import 'package:flutter_catalog/pages/jobs.dart';
// import 'package:flutter_catalog/pages/chatPage.dart';
import 'package:flutter_catalog/pages/profile_page.dart';
import 'package:flutter_catalog/pages/serviceform.dart';
import 'package:flutter_catalog/pages/services.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/demo.dart';
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
      theme: MyTheme.lightTheme(context),

      //used for light theme
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.deepOrange),
      initialRoute: "/home", //userd for dark theme
      routes: {
        "/": ((context) => LoginPage()),
        MyRoutes.homeRoute: ((context) => HomePage()),
        MyRoutes.loginRoute: ((context) => LoginPage()),
        MyRoutes.profileRoute: (((context) => ProfilePage1())),
        MyRoutes.chat: (((context) => ChatPage())),
        MyRoutes.jobs: (context) => Jobs(),
        MyRoutes.services: (context) => Services(),
        MyRoutes.serviceform: (context) => serviceform(),
        MyRoutes.card_page: (context) => Card(),
        // MyRoutes.prac_page: (context) => Prac()
      },
    );
  }
}
