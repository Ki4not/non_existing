import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/cards.dart/settings_card.dart';
import 'package:non_existing/classes/settings_class.dart';
import 'package:non_existing/classes/text_style_class.dart';
import 'package:non_existing/presentations/login_page.dart';

List<Settings> settings = [
  Settings(icon: FontAwesomeIcons.user, text: 'Edit profile'),
  Settings(icon: FontAwesomeIcons.star, text: 'About'),
  Settings(icon: FontAwesomeIcons.gear, text: 'Settings'),
];
List<Settings> settings2 = [
  Settings(icon: FontAwesomeIcons.file, text: 'Terms & Privacy Policy'),
];

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                Text('Profile', style: CustomTextStyle.extraLarge,),
                const SizedBox(
                  height: 10.0,
                ),

                Center(child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.circleUser, size: 100.0, color: CustomColors.button,))),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text('Kian June Catubig', style: CustomTextStyle.boldMedium),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Text('kianjune.catubig@ctu.edu.ph', style: CustomTextStyle.lightSmall),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                
                Column(
                  children: settings
                      .map((setting) => SettingsCard(
                            setting: setting,
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Divider(height: 2.0, color: CustomColors.buttonText,),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: settings2
                      .map((setting) => SettingsCard(
                            setting: setting,
                          ))
                      .toList(),
                ),

                Card(
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
                            child: Icon(FontAwesomeIcons.doorOpen, size: 30.0, color: CustomColors.background,),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: ()=> _dialogueBuilder(context),
                            child: Text('Log Out', style: CustomTextStyle.boldMedium),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => _dialogueBuilder(context), 
                        icon: Icon(
                          FontAwesomeIcons.greaterThan,
                          color: CustomColors.button,
                          size: 18.0,
                        )
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ]
      ),
    );
  }
}

Future<void> _dialogueBuilder(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Are you sure you want to log out?', style: CustomTextStyle.large),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 25,
          actions: [
            
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge),
            child: Text('Cancel', style: CustomTextStyle.lightMedium),
          ),
          
          TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Welcome to Pantopia!',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
              style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge),
              child: Text('Log out', style: CustomTextStyle.buttonMedium),
            ),
          ],

        );
      });
}
