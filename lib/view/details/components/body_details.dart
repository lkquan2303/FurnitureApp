import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/size_config.dart';

class BodyDetailsScreen extends StatelessWidget {
  final Product product;

  const BodyDetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
        child: Column(
      children: [ProductInfor(product: product)],
    ));
  }
}

class ProductInfor extends StatelessWidget {
  const ProductInfor({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    TextStyle lightTextStyle = TextStyle(
      color: kTextColor.withOpacity(0.6),
    );
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize * 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.category.toUpperCase(),
            style: lightTextStyle,
          ),
          SizedBox(height: defaultSize),
          Text(
            product.title,
            style: TextStyle(
              fontSize: defaultSize * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.4,
            ),
          ),
          SizedBox(height: defaultSize * 2),
          Text(
            "From",
            style: lightTextStyle,
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
              fontSize: defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: defaultSize * 2,
          ),
          Text("Availble Colors"),
          AvailbleColors(defaultSize: defaultSize)
        ],
      ),
    );
  }
}

class AvailbleColors extends StatelessWidget {
  const AvailbleColors({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(4),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(6),
      ),
      child: SvgPicture.asset("assets/icons/check.svg"),
    );
  }
}
