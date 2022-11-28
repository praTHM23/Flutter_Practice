import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              }),
          IconButton(
              icon: Icon(Icons.work_outline),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.jobs);
              }),
          IconButton(
              icon: Icon(Icons.miscellaneous_services_outlined),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.services);
              }),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.serviceform);
              }),
        ],
      ),
    );
  }
}
