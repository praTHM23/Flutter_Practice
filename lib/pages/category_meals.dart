import 'package:edukart/models/Meals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import '../widgets/meal_item.dart';
import 'package:edukart/models/dummy.dart';
import 'package:edukart/widgets/meal_item.dart';

class category_meals extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categroyID;
  // final String Categorytitle;

  // category_meals(this.categroyID, this.Categorytitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final c_id = routeArgs['id'];
    final c_title = routeArgs['title'];

    final List<Meal> categoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(c_id);
      },
    ).toList();
    print(categoryMeals);
    return Scaffold(
      appBar: AppBar(
        title: Text(c_title.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
