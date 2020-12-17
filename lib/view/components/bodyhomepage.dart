import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/categories.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'categories.dart';
import 'categories_card.dart';

class BodyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TitleText(
              title: "Browse by Categories",
            ),
          ),
          FutureBuilder(
            future: fetchCategory(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data,
                  )
                : Center(
                    child: Image.asset("assets/ripple.gif"),
                  ),
          )
        ],
      ),
    );
  }
}
