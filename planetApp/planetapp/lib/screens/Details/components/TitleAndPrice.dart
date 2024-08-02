import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    required this.price,
    required this.title,
    required this.country,
    super.key,
  });
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                )),
            TextSpan(
                text: "$country",
                style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
              fontSize: 25,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
