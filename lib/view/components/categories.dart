import 'package:flutter/material.dart';
import 'package:furniture_app/models/categories.dart';
import 'categories_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    this.categories,
  }) : super(key: key);
  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.all(10),
            child: CategoryCard(categories: categories[index]),
          ),
        ),
      ),
    );
  }
}
