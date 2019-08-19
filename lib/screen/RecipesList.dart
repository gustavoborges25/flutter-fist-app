import 'package:firstapp/screen/CardList.dart';
import 'package:firstapp/model/Recipes.dart';
import 'package:firstapp/service/Recipes.dart';
import 'package:flutter/material.dart';

class RecipesList extends StatefulWidget {
  @override
  _RecipesListState createState() => _RecipesListState();
}

class _RecipesListState extends State<RecipesList> {
  List<dynamic> _items = new List();
  RecipesService recipesService;

  @override
  void initState() {
    super.initState();
    recipesService = RecipesService();
    _items = [];
    fetchAllMeal();
  }

  void fetchAllMeal() {
    recipesService.fetchAll().then((onValue) {
      print(onValue);
      setState(() {
        _items = onValue;
      });
    }).catchError((onError) {
      print("catchError: $onError");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return CardList(_items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}