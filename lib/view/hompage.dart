import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/size_config.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize * 2,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/scan.svg",
                height: SizeConfig.defaultSize * 2.4,
              ),
              onPressed: () {}),
          Center(
            child: Text(
              "Scan",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}