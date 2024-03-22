import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/business_logic.dart/home_page_bloc/home_page_bloc.dart';
import 'package:non_existing/cards.dart/custom_colors.dart';
import 'package:non_existing/classes/donor_class.dart';
import 'package:non_existing/presentations/donate_page.dart';
import 'package:non_existing/presentations/message_page.dart';
import 'package:non_existing/presentations/notification_page.dart';
import 'package:non_existing/presentations/profile_page.dart';

List<BottomNavigationBarItem> navItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.handHoldingHeart),
    label: 'Donate',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.message),
    label: 'Message',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.bell),
    label: 'Notifications',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.circleUser),
    label: 'Profile',
  ),
];

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

List<Widget> navScreens = <Widget>[
  const DonatePage(),
  const MessagePage(),
  const NotificationPage(),
  const ProfilePage(),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageBloc, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        final clampedIndex = state.tabIndex.clamp(0, navScreens.length - 1);
        return Scaffold(
            body: Center(child: navScreens[clampedIndex]),
            bottomNavigationBar: BottomNavigationBar(
              items: navItems,
              currentIndex: state.tabIndex,
              iconSize: 25.0,
              backgroundColor: CustomColors.button,
              selectedItemColor: CustomColors.background,
              selectedLabelStyle: const TextStyle(fontFamily: 'Merriweather'),
              selectedFontSize: 13.0,
              unselectedLabelStyle: const TextStyle(fontFamily: 'Merriweather'),
              unselectedFontSize: 13.0,
              unselectedItemColor: CustomColors.stroke,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                BlocProvider.of<HomePageBloc>(context)
                    .add(TabChange(tabIndex: index));
              },
            ));
      },
    );
  }
}
