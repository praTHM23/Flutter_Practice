import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/bottomnavigation.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Jobs")),
      bottomNavigationBar: BottomBar(),
    );
  }
}
