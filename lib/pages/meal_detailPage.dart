import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});
  static const routeName = '/Meal-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      body: Center(child: Text(routeArgs)),
    );
  }
}
