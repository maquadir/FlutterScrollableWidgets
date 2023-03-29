import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/recipes_grid_view.dart';
import '../models/models.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RecipesGridView(recipes: snapshot.data ?? []);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
