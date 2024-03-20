import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';
import 'package:non_existing/cards&classes.dart/donor_class.dart';

class DonorCard extends StatelessWidget {
  const DonorCard({
    super.key,
    required this.donor
  });

  final Donor donor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: CustomColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
                10.0),
            child: const Image(
                image: AssetImage('assets/images/thagaamlogo.jpg'),
                width: 100.0,
                height: 100.0),
          ),
          const SizedBox(width: 15.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                donor.companyName,
                style: TextStyle(
                    fontSize: 13.0, fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),
              ),
              const SizedBox(height: 5.0,),
              Text(donor.foodName,
                  style: TextStyle(fontSize: 11.0, color: CustomColors.buttonText,
                  fontFamily: 'Merriweather',),
                  ),
              Text(
                'Qty: ${donor.quantity}',
                style: TextStyle(
                    fontSize: 11.0, 
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),
              ),
              Text(
                donor.time,
                style: TextStyle(
                    fontSize: 11.0, 
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),
              ),
              Text(donor.date,
                  style: TextStyle(fontSize: 11.0, color: CustomColors.buttonText,
                  fontFamily: 'Merriweather'))
            ],
          ),
          IconButton(
            onPressed: (){}, 
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
