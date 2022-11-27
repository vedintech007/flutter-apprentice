import 'package:flutter/material.dart';
import 'models/recipe_model.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe Calculator")),
      body: ListView.builder(
        itemCount: RecipeModel.samples.length,
        itemBuilder: (context, index) {
          // TODO: Update to return Recipe card
          return Text(RecipeModel.samples[index].label);
        },
      ),
    );
  }
  // TODO: Add buildRecipeCard() here
}
