import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work-IT"),
      ),
      body: Center(
        child: Container(
          child: Text("This is the Home page"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
