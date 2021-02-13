import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _GlutenFree = false;
  bool _LactoseFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;

  Widget buildSwitchListTile(String title, String description, bool currentValue,
      Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(description),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile('Gluten-free',
                    'Only include gluten-free meals', _GlutenFree, (newValue) {
                  setState(() {
                    _GlutenFree = newValue;
                  });
                }),
                buildSwitchListTile('Lactose-free',
                    'Only include lactose-free meals', _LactoseFree, (newValue) {
                      setState(() {
                        _LactoseFree = newValue;
                      });
                    }),
                buildSwitchListTile('Vegetarian',
                    'Only include Vegetarian meals', _Vegetarian, (newValue) {
                      setState(() {
                        _Vegetarian = newValue;
                      });
                    }),
                buildSwitchListTile('Vegan',
                    'Only include Vegan meals', _Vegan, (newValue) {
                      setState(() {
                        _Vegan = newValue;
                      });
                    }),
              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
