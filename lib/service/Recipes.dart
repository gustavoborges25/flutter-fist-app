import 'dart:convert' as convert;
import 'package:http/http.dart' as  http;
import 'package:firstapp/model/Recipes.dart';

class RecipesService {

  Future<List<Recipes>> fetchAll() async {
    var url = 'https://receitas-de-familia.firebaseio.com/recipes.json';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body);
      var recipesList = jsonResponse.map((model) => Recipes.fromJson(model)).toList();
      return Future.value(recipesList);
    }
    return Future.error(Exception('Request failed with status: ${response.statusCode}.'));
  }

}