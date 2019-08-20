import 'package:firstapp/model/Recipes.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final Recipes recipe;
  
  CardList(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 124,
            width: 124,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                topLeft: Radius.circular(8),                    
              ),
              child: Image.network(
                recipe.photoCover,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      recipe.category.toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 15,
                      bottom: 20,
                    ),
                    child: Text(
                      recipe.title,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }}