import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';
import 'package:non_existing/cards&classes.dart/message_card.dart';
import 'package:non_existing/cards&classes.dart/message_class.dart';
import 'package:non_existing/cards&classes.dart/page_header.dart';
import 'package:non_existing/cards&classes.dart/search_bar.dart';

List<Message> messages = [
  Message(charityName: 'Thagaam Foundation', lastMesseger: 'You', message: 'Thank you so much!', time: '7:36 PM'),
  Message(charityName: 'Thagaam Foundation', lastMesseger: 'You', message: 'Thank you so much!', time: '7:36 PM')
];

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

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
                const PageHeader(text: 'Messages'),
                const SizedBox(
                  height: 10.0,
                ),

                const SearchBox(width: 350.0,),
                const SizedBox(
                  height: 20.0,
                ),
                
                Column(
                  children: messages
                      .map((message) => MessageCard(
                            message: message,
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                
              ],
            ),
          ),
        ]
      ),
    );
  }
}