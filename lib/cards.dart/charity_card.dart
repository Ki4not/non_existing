import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/classes/charity_class.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/text_style_class.dart';

class CharityCard extends StatelessWidget {
  const CharityCard({super.key, required this.charity, this.onPressed});

  final Charity charity;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: const Image(
                image: AssetImage('assets/images/thagaamlogo.jpg'),
                width: 100.0,
                height: 100.0),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(charity.companyName, style: CustomTextStyle.small),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: 150.0,
                height: 70.0,
                child: Text(charity.description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.xxSmall)
              )
            ],
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                FontAwesomeIcons.greaterThan,
                color: CustomColors.button,
                size: 18.0,
              )
            ),
        ],
      ),
    );
  }
}
