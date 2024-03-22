import 'package:flutter/material.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/cards.dart/notification_card.dart';
import 'package:non_existing/classes/notification_class.dart';
import 'package:non_existing/cards.dart/page_header_label.dart';
import 'package:non_existing/classes/text_style_class.dart';

List<Notifications> notifications = [
  Notifications(description: 'Thaagam Foundation donation has been completed', time: '9:21PM'),
];

List<Notifications> notifications2 = [
  Notifications(description: 'Thaagam Foundation donation has been failed', time: '10:37PM'),
];

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                Text('Notifications', style: CustomTextStyle.extraLarge,),
                const SizedBox(
                  height: 10.0,
                ),

                const PageHeaderLabel(text: 'New', buttonText: 'Mark all as read'),
                const SizedBox(
                  height: 10.0,
                ),
                
                Column(
                  children: notifications
                      .map((notification) => NotificationCard(
                            notification: notification,
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                Text('Last Month',
                style: TextStyle(
                  color: CustomColors.buttonText,
                  fontFamily: 'Merriweather',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),

                const SizedBox(
                  height: 10.0,
                ),
                
                Column(
                  children: notifications2
                      .map((notification) => NotificationCard(
                            notification: notification,
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