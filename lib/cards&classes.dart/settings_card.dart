import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';
import 'package:non_existing/cards&classes.dart/settings_class.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.setting
  });

  final Settings setting;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: CustomColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: CustomColors.button, 
              borderRadius: const BorderRadius.all(Radius.circular(10.0),)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Icon(setting.icon, size: 30.0, color: CustomColors.background,),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){},
                child: Text(setting.text,
                style: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),),
              ),
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
