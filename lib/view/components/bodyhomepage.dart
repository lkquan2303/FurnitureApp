import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/services/fetchProduct.dart';
import 'package:furniture_app/view/components/product_list.dart';
import 'categories.dart';

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
          ),
          Divider(height: 5),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TitleText(
              title: "Recommends For You",
            ),
          ),
          FutureBuilder(
            future: fetchProducts(),
            builder: (context, snapshot) => snapshot.hasData
                ? RecommendProducts(product: snapshot.data)
                : Center(child: Image.asset("assets/ripple.gif")),
          )
        ],
      ),
    );
  }
}
