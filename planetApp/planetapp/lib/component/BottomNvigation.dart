import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';
import 'package:svg_flutter/svg.dart';

class BottomNvigation extends StatelessWidget {
  const BottomNvigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/flower.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/user-icon.svg'))
        ],
      ),
    );
  }
}
