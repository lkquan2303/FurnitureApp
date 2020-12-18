import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/size_config.dart';
import 'package:furniture_app/view/details/details_screen.dart';
import 'package:furniture_app/view/home/components/products_card.dart';

class RecommendProducts extends StatelessWidget {
  const RecommendProducts({
    Key key,
    this.product,
  }) : super(key: key);

  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: product[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  product: product[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
