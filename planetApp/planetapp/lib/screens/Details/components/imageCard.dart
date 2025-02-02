import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';
import 'package:planetapp/screens/Details/components/IconCard.dart';
import 'package:svg_flutter/svg.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                  ),
                  Spacer(),
                  IconCard(
                    icon: 'assets/icons/sun.svg',
                  ),
                  IconCard(
                    icon: 'assets/icons/icon_2.svg',
                  ),
                  IconCard(
                    icon: 'assets/icons/icon_3.svg',
                  ),
                  IconCard(
                    icon: 'assets/icons/icon_4.svg',
                  )
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.29),
                        blurRadius: 60,
                        offset: Offset(0, 10.0))
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    bottomLeft: Radius.circular(63.0),
                  ),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ),
    );
  }
}
