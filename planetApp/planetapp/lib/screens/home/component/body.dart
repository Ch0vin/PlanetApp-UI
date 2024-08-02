import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';
import 'package:planetapp/screens/home/component/FeaturedPlants.dart';
import 'package:planetapp/screens/home/component/HeaderwithSearchBox.dart';
import 'package:planetapp/screens/home/component/RecomendedPlanets.dart';
import 'package:planetapp/screens/home/component/TitleWithButton.dart';
import 'package:planetapp/screens/home/component/TitlewithCustomeUnderLine.dart';
import 'package:svg_flutter/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderwithSearchBox(size: size),
          TitleWithButton(
            title: "Recomended",
            prress: () {},
          ),
          RecomendedPlanets(),
          TitleWithButton(
            title: "Featured Plants",
            prress: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
