import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/size_config.dart';
import 'package:furniture_app/view/details/components/product_description.dart';
import 'package:furniture_app/view/details/components/product_infor.dart';

class BodyDetailsScreen extends StatelessWidget {
  final Product product;

  const BodyDetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
        child: SizedBox(
      height: SizeConfig.screenHeight - AppBar().preferredSize.height,
      width: double.infinity,
      child: Stack(
        children: [
          ProductInfor(product: product),
          Positioned(
            top: defaultSize * 37.5,
            left: 0,
            right: 0,
            child:
                ProductDescription(defaultSize: defaultSize, product: product),
          ),
          Positioned(
            top: defaultSize * 9,
            right: -defaultSize * 1.5,
            child: Hero(
              tag: product.id,
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
                height: defaultSize * 37.8,
                width: defaultSize * 36.4,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
