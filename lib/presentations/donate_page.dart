import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:non_existing/cards.dart/charity_card.dart';
import 'package:non_existing/classes/charity_class.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/cards.dart/page_header_label.dart';
import 'package:non_existing/cards.dart/donor_card.dart';
import 'package:non_existing/classes/donor_class.dart';
import 'package:non_existing/classes/text_style_class.dart';
import 'package:non_existing/presentations/charity_page.dart';
import 'package:non_existing/presentations/view_charity_page.dart';

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
                Text('Welcome back,', style: CustomTextStyle.extraLarge),
                const SizedBox(
                  height: 10.0,
                ),
                Text('Kian June Catubig!', style: CustomTextStyle.medium),
                const SizedBox(
                  height: 40.0,
                ),
                const PageHeaderLabel(
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
                PageHeaderLabel(
                  text: 'Charities',
                  buttonText: 'See all',
                  onPressed: () {
                    Fluttertoast.showToast(
                    msg: 'Charities',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CharityPage()));
                  },
                ),
          
                Column(
                  children: charities
                      .map((charity) => CharityCard(
                            charity: charity, 
                            onPressed: () {
                              Fluttertoast.showToast(
                              msg: 'View Charity',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewCharityPage()));
                            },
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
