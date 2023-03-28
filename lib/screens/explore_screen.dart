import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/today_recipe_list_view.dart';
import '../models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            return TodayRecipeListView(recipes: recipes);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
