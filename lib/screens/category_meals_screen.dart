import 'package:flutter/material.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routName = 'category_meals';
  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg= ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: null,
    );
  }
}
