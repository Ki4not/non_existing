import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards&classes.dart/charity_card.dart';
import 'package:non_existing/cards&classes.dart/charity_class.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';
import 'package:non_existing/cards&classes.dart/search_bar.dart';

List<Charity> charities = [
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
  Charity(
      companyName: 'Thagaam Foundation',
      description: 'They contribute to broader food relief efforts and collaborate with communities to address hunger issues.',
      ),
];

class CharityPage extends StatelessWidget {
  const CharityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.button,
        centerTitle: true,
        title: Text('Charities', style: TextStyle(fontFamily: 'Merriweather', color: CustomColors.buttonText)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              height: 50.0, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SearchBox(width: 280.0,),
                  IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.filter, color: CustomColors.buttonText,))
                ],
              ), 
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft, color: CustomColors.buttonText), // Set button color
          onPressed: () => Navigator.pop(context), // Handle icon button press
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: charities
                  .map((charity) => CharityCard(
                        charity: charity,
                      ))
                  .toList(),
            ),
          ),
        ]
      ),
    );
  }
}