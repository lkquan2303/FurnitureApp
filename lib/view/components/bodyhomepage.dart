import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';

class BodyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TitleText(
              title: "Browse by Categories",
            ),
          ),
          SizedBox(
            width: 205,
            child: Stack(
              children: [
                Container(
                  color: Colors.blueAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
