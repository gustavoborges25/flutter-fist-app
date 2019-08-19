import 'package:firstapp/model/Recipes.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final Recipes recipe;
  
  CardList(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Image.network(recipe.photoCover),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(recipe.category),
                Text(recipe.title),
              ],
            ),
          ),
        ],
      ),
    );
  }}