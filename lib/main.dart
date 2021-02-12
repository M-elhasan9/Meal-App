import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.cyan,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          body2: TextStyle(color: Color.fromRGBO(20, 50, 50, 1),),
          title: TextStyle(
            fontSize: 24,
          fontFamily: 'RobotoCondensed'
          ),
        )
      ),
      //home: CategoriesScreen(),
      routes: {
        '/':(context) =>TabsScreen(),
        CategoryMealScreen.routName:(context) => CategoryMealScreen(),
        MealDetailScreen.routName:(context) => MealDetailScreen(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('meal app'),
      ),
      body: null,
    );
  }
}
