import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/cards.dart/yellow_button.dart';
import 'package:non_existing/classes/text_style_class.dart';

class ViewCharityPage extends StatelessWidget {
  const ViewCharityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.button,
        centerTitle: true,
        title: Text('Thaagam Foundation', style: CustomTextStyle.extraLarge),
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft, color: CustomColors.buttonText), // Set button color
          onPressed: () => Navigator.pop(context), // Handle icon button press
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300.0, // Adjust width and height as desired
                height: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Add desired border radius
                  border: Border.all(color: Colors.grey, width: 1.0), // Optional border (adjust color and width)
                ),
                child: ClipRRect( // Clip the child to match the container's rounded corners
                  borderRadius: BorderRadius.circular(10.0), // Set the same border radius
                  child: const Image(
                    image: AssetImage('assets/images/charityimage.jpg'),
                    fit: BoxFit.cover, // Make image fill the container while maintaining aspect ratio
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Food Campaign', style: CustomTextStyle.extraLarge),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.share, color: CustomColors.button,),
                ),
              ],
            ),
            Row(
              children: [
                Text('Organized by: ', style: CustomTextStyle.lightSmall),
                Text('DBC', style: CustomTextStyle.buttonSmall),
              ],
            ),
            const SizedBox(height: 15.0,),

            Text(
              'While Thaagam Foundation combats poverty and animal welfare, their fight against hunger shines bright. They nourish both humans and animals, providing hot meals to the homeless, essential nutrients to children, and food security during relief efforts. Even for strays, Thaagam ensures access to food. Though offering immediate relief, their work aims for long-term solutions, tackling root causes like poverty and education access.',
              textAlign: TextAlign.justify,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyle.lightExtraSmall
            ),
            const SizedBox(height: 15.0,),

            YellowButton(),
          ]
        ),
      ),
    );
  }
}

