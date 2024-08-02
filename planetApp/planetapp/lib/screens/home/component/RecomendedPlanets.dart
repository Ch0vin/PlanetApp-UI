import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:planetapp/constant.dart';
import 'package:planetapp/screens/Details/detailScren.dart';

class RecomendedPlanets extends StatelessWidget {
  const RecomendedPlanets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlanetCard(
            img: "assets/images/image_1.png",
            country: "Russia",
            title: "Samantha",
            price: 789,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detailscren()));
            },
          ),
          RecomendedPlanetCard(
            img: "assets/images/image_2.png",
            country: "Korean",
            title: "Samantha",
            price: 247,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detailscren()));
            },
          ),
          RecomendedPlanetCard(
            img: "assets/images/image_3.png",
            country: "France",
            title: "Samantha",
            price: 670,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detailscren()));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedPlanetCard extends StatelessWidget {
  const RecomendedPlanetCard({
    required this.country,
    required this.title,
    required this.price,
    required this.press,
    required this.img,
    super.key,
  });
  final String img, title, country;
  final int price;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          right: kDefaultPadding / 2,
          left: kDefaultPadding / 2,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(img),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      offset: Offset(0, 10),
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n", style: TextStyle(color: kTextColor)),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text('\$$price', style: TextStyle(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
