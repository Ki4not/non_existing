import 'package:flutter/material.dart';
import 'package:non_existing/classes/text_style_class.dart';

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
        Text(text, style: CustomTextStyle.boldExtraLarge),
        TextButton(
          onPressed: onPressed,
          child: Text(buttonText, style: CustomTextStyle.buttonExtraSmall),
        ),
      ],
    );
  }
}
