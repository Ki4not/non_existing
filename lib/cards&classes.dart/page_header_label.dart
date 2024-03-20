import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';

class PageHeaderLabel extends StatelessWidget {
  const PageHeaderLabel(
      {super.key, required this.text, required this.buttonText, this.onPressed});

  final String text;
  final String buttonText;
  final VoidCallback? onPressed;

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
          onPressed: onPressed,
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
