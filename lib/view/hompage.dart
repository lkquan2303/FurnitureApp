import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/size_config.dart';
import 'package:furniture_app/view/components/bodyhomepage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyHomepage(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
          onPressed: () {},
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
