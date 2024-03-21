import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards&classes.dart/charity_class.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';

class CharityCard extends StatelessWidget {
  const CharityCard({super.key, required this.charity, this.onPressed});

  final Charity charity;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: CustomColors.background,
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
              Text(
                charity.companyName,
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                width: 150.0,
                height: 70.0,
                child: Text(charity.description,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10.0,
                        color: CustomColors.buttonText,
                        fontFamily: 'Merriweather')),
              )
            ],
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                FontAwesomeIcons.greaterThan,
                color: CustomColors.button,
                size: 18.0,
              )),
        ],
      ),
    );
  }
}
