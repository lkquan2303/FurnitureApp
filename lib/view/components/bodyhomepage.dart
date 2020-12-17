import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/categories.dart';
import 'categories_card.dart';

class BodyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TitleText(
              title: "Browse by Categories",
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(
                  categories: category,
                ),
                CategoryCard(
                  categories: category,
                ),
                CategoryCard(
                  categories: category,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
