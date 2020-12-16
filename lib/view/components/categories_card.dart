import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/categories.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'category_custom_shape.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.categories,
  }) : super(key: key);
  final Categories categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      child: AspectRatio(
        aspectRatio: 0.83,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipPath(
              clipper: CategoryCustomShape(),
              child: AspectRatio(
                aspectRatio: 1.025,
                child: Container(
                  padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
                  color: kSecondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TitleText(
                        title: category.title,
                      ),
                      SizedBox(height: SizeConfig.defaultSize),
                      Text(
                        "${categories.numofProducts}+ Products",
                        style: TextStyle(color: kTextColor.withOpacity(0.6)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif",
                      image: categories.image),
                ))
          ],
        ),
      ),
    );
  }
}
