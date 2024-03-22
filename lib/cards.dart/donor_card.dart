import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/donor_class.dart';
import 'package:non_existing/classes/text_style_class.dart';

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
      color: Colors.transparent,
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
              Text(donor.companyName, style: CustomTextStyle.small),
              const SizedBox(height: 5.0,),
              Text(donor.foodName, style: CustomTextStyle.xxSmall),
              Text('Qty: ${donor.quantity}', style: CustomTextStyle.xxSmall),
              Text(donor.time, style: CustomTextStyle.xxSmall),
              Text(donor.date, style: CustomTextStyle.xxSmall)
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
