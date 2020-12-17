import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/services/fetchCategories.dart';
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
          Container(
            width: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kSecondaryColor,
            ),
            child: AspectRatio(
              aspectRatio: 0.8,
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: product.image,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
