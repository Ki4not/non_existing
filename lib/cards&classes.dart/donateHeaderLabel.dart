import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/customColors.dart';

class DonateHeaderLabel extends StatelessWidget {
  const DonateHeaderLabel({super.key, required this.text, required this.buttonText});

  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: TextStyle(
              color: CustomColors.buttonText,
              fontFamily: 'Merriweather',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            )),
        TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
                color: CustomColors.button,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.bold,
                fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}
