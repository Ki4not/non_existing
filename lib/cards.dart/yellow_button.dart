import 'package:flutter/material.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/text_style_class.dart';

class YellowButton extends StatelessWidget {
  const YellowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0, 
      decoration: BoxDecoration(
        color: CustomColors.button, 
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(width: 2.0, color: CustomColors.buttonText)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: CustomColors.button, elevation: 0.0),
        onPressed: () {},
        child: Text('DONATE', style: CustomTextStyle.large),
      ),
    );
  }
}