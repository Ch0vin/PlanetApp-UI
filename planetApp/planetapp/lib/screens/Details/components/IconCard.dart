import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';
import 'package:svg_flutter/svg.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    required this.icon,
    super.key,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                color: kPrimaryColor.withOpacity(0.22),
                blurRadius: 22),
            BoxShadow(
                offset: Offset(-15, -15), color: Colors.white, blurRadius: 20)
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
