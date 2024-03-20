import 'package:flutter/material.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';
import 'package:non_existing/cards&classes.dart/message_class.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.message
  });

  final Message message;

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
                50.0),
            child: const Image(
                image: AssetImage('assets/images/thagaamlogo.jpg'),
                width: 50.0,
                height: 50.0),
          ),
          const SizedBox(width: 15.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.charityName,
                style: TextStyle(
                    fontSize: 13.0, fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather',
                    color: CustomColors.buttonText),
              ),
              const SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('${message.lastMesseger}: ',
                      style: TextStyle(fontSize: 11.0, color: CustomColors.buttonText,
                      fontFamily: 'Merriweather',),
                      ),
                      
                  Text(
                    message.message,
                    style: TextStyle(
                        fontSize: 11.0, 
                        fontFamily: 'Merriweather',
                        color: CustomColors.buttonText),
                  ),
                ],
              ),
            ],
          ),
          
          Text(
              message.time,
              style: TextStyle(
                  fontSize: 11.0, 
                  fontFamily: 'Merriweather',
                  color: CustomColors.buttonText),
            ),
        ],
      ),
    );
  }
}
