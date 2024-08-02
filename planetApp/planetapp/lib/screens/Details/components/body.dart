import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planetapp/constant.dart';
import 'package:planetapp/screens/Details/components/IconCard.dart';
import 'package:planetapp/screens/Details/components/TitleAndPrice.dart';
import 'package:planetapp/screens/Details/components/imageCard.dart';
import 'package:svg_flutter/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageCard(),
          TitleAndPrice(
            title: "Samantha",
            price: 440,
            country: "Russia",
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20)), // Set the radius here
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Description",
                        style: TextStyle(color: kTextColor),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
