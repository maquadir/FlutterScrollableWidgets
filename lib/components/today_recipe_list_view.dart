import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/explore_recipe.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recipes of the Day 🍳',
                style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 400,
              // TODO: Add ListView Here
              color: Colors.transparent,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return buildCard(recipe);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: recipes.length),
            )
          ],
        ));
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
