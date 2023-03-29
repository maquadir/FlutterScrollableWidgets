import 'package:flutter/cupertino.dart';

import '../models/simple_recipe.dart';
import 'recipe_thumbnail.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipesGridView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
            itemCount: recipes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final simpleRecipe = recipes[index];
              return RecipeThumbnail(recipe: simpleRecipe);
            }));
  }
}
