import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
      color: kSecondaryColor,
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
          Row(
            children: [
              buildColorBox(
                defaultSize,
                color: Colors.blue,
                isActive: true,
              ),
              buildColorBox(
                defaultSize,
                color: Colors.brown,
                isActive: false,
              ),
              buildColorBox(
                defaultSize,
                color: Colors.black,
                isActive: false,
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color color, bool isActive: false}) {
    return Container(
      margin: EdgeInsets.only(top: 8, right: 5),
      padding: EdgeInsets.all(4),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}
