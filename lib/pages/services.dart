import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/bottomnavigation.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Services")),
      bottomNavigationBar: BottomBar(),
    );
  }
}
