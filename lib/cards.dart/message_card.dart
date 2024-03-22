import 'package:flutter/material.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/message_class.dart';
import 'package:non_existing/classes/text_style_class.dart';

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
              Text(message.charityName, style: CustomTextStyle.boldSmall),
              const SizedBox(height: 5.0,),
              Row(
                children: [
                  Text('${message.lastMesseger}: ', style: CustomTextStyle.lightXXSmall),
                  Text(message.message, style: CustomTextStyle.lightXXSmall),
                ],
              ),
            ],
          ),
          const SizedBox(width: 5.0,),
          Text(message.time, style: CustomTextStyle.lightXXSmall),
        ],
      ),
    );
  }
}
