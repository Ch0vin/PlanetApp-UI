import 'package:flutter/material.dart';
import 'package:planetapp/constant.dart';
import 'package:planetapp/screens/home/component/TitlewithCustomeUnderLine.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    required this.title,
    required this.prress,
    super.key,
  });

  final String title;
  final VoidCallback prress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitlewithCustomeUnderLine(text: title),
          Spacer(),
          ElevatedButton(
            onPressed: prress,
            child: Text(
              "More",
              style: TextStyle(),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Set the radius here
              ),
            ),
          )
        ],
      ),
    );
  }
}
