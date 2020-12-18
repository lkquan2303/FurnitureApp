import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/product.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kSecondaryColor,
        ),
        child: AspectRatio(
          aspectRatio: 0.68,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
                child: Center(
                  child: TitleText(
                    title: product.title,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize / 2),
              Text("\$${product.price}")
            ],
          ),
        ),
      ),
    );
  }
}
