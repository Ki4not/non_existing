import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/businessLogic.dart/home_page_bloc/home_page_bloc.dart';
import 'package:non_existing/cards&classes.dart/customColors.dart';
import 'package:non_existing/cards&classes.dart/donorClass.dart';
import 'package:non_existing/presentations/donatePage.dart';

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
  DonatePage(),
  Text('2'),
  Text('3'),
  Text('4'),
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
              unselectedFontSize: 14.0,
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
