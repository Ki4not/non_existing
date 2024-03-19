import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/charityCard.dart';
import 'package:non_existing/cards&classes.dart/charityClass.dart';
import 'package:non_existing/cards&classes.dart/customColors.dart';
import 'package:non_existing/cards&classes.dart/donateHeaderLabel.dart';
import 'package:non_existing/cards&classes.dart/donorCard.dart';
import 'package:non_existing/cards&classes.dart/donorClass.dart';

List<Donor> donors = [
  Donor(
      companyName: 'Thagaam Foundation',
      foodName: 'Beef Steak for the Orphan',
      quantity: '1',
      time: '11:00AM - 1:00PM',
      date: '02/20/2024'),
  Donor(
      companyName: 'Thagaam Foundation',
      foodName: 'Beef Steak for the Orphan',
      quantity: '1',
      time: '11:00AM - 1:00PM',
      date: '02/20/2024'),
];

List<Charity> charities = [
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
];

class DonatePage extends StatelessWidget {
  const DonatePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/pagebackground.png', // Replace with your image path
                fit: BoxFit.cover, // Adjust fit as needed (e.g., BoxFit.fill, BoxFit.contain)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back,',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.buttonText,
                    fontFamily: 'Merriweather',
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Kian June Catubig!',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.buttonText,
                    fontFamily: 'Merriweather',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const DonateHeaderLabel(
                  text: 'My Donations',
                  buttonText: 'See all',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: donors
                      .map((donor) => DonorCard(
                            donor: donor,
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const DonateHeaderLabel(
                  text: 'My Donations',
                  buttonText: 'See all',
                ),
          
                Column(
                  children: charities
                      .map((charity) => CharityCard(
                            charity: charity,
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
