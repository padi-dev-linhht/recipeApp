import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/recipe.dart';

class RecipeService {
  static const _baseUrl = 'https://hf-android-app.s3-eu-west-1.amazonaws.com/android-test';
  static const _recipesEndpoint = '/recipes.json';

  static Future<List<Recipe>> getRecipes() async {
    final response = await http.get(Uri.parse('$_baseUrl$_recipesEndpoint'));

    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as List<dynamic>;
      return jsonList.map((json) => Recipe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}