import 'package:flutter/material.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/notification_class.dart';
import 'package:non_existing/classes/text_style_class.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notification
  });

  final Notifications notification;

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
              const SizedBox(height: 5.0,),
              SizedBox(
                width: 150.0,
                height: 70.0,
                child: Text(
                  notification.description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.lightExtraSmall,)
              )
            ],
          ),
          Text(notification.time, style: CustomTextStyle.lightExtraSmall),
        ],
      ),
    );
  }
}
