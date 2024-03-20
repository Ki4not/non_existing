import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: CustomColors.buttonText,
        fontFamily: 'Merriweather',
      ),
    );
  }
}