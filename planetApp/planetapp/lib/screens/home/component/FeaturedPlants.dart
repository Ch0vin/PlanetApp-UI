import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantsCard(
            Image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturedPlantsCard(
              Image: "assets/images/bottom_img_2.png", press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard({
    required this.Image,
    required this.press,
    super.key,
  });
  final String Image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding / 2,
            right: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
            top: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(Image))),
      ),
    );
  }
}
