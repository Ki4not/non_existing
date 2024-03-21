import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:non_existing/cards&classes.dart/custom_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Stack(children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/pagebackground.png', // Replace with your image path
              fit: BoxFit
                  .cover, // Adjust fit as needed (e.g., BoxFit.fill, BoxFit.contain)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                'assets/images/pantopialogo.png',
                width: 180.0,
                height: 180.0,
              )),
              Text(
                'PANTOPIA',
                style: TextStyle(
                    color: CustomColors.buttonText,
                    fontSize: 30.0,
                    fontFamily: 'Merriweather'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Where food finds a new chapter, donated, or stored for later.',
                  style: TextStyle(
                    color: CustomColors.buttonText,
                    fontSize: 13.0,
                    fontFamily: 'Merriweather',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () {
                  showLoginSheet(context);
                },
                child: Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.button,
                    ),
                    child: Center(
                        child: Icon(
                      FontAwesomeIcons.arrowUp,
                      color: CustomColors.buttonText,
                    ))),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Future<dynamic> showLoginSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 700.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: CustomColors.button),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          FontAwesomeIcons.lessThan,
                          size: 20.0,
                          color: CustomColors.background,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: CustomColors.background,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Merriweather'),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Getting started',
                  style: TextStyle(
                      color: CustomColors.buttonText,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Good to see you back!',
                  style: TextStyle(
                      color: CustomColors.buttonText,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Merriweather'),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.google,
                          color: CustomColors.buttonText,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: CustomColors.buttonText,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: CustomColors.buttonText,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 70.0,
                ),
                SizedBox(
                  height: 60.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: CustomColors.buttonText,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: CustomColors.background,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: CustomColors.buttonText, width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: CustomColors.buttonText, width: 1.0)),
                        prefixIcon: Icon(
                          FontAwesomeIcons.user,
                          color: CustomColors.buttonText,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 60.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: CustomColors.buttonText,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: CustomColors.background,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: CustomColors.buttonText, width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: CustomColors.buttonText, width: 1.0)),
                        prefixIcon: Icon(
                          FontAwesomeIcons.lock,
                          color: CustomColors.buttonText,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 130.0,
                ),
                Container(
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: CustomColors.background,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                          width: 2.0, color: CustomColors.buttonText)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.background,
                        elevation: 0.0),
                    onPressed: () {},
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: CustomColors.buttonText,
                          fontSize: 18.0,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have account? ',
                      style: TextStyle(
                          color: CustomColors.buttonText,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Merriweather'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(
                              context); // Close current sheet (optional)
                          showSignUpSheet(context); // Open Sign Up sheet
                        },
                        child: Text(
                          'Sign up!',
                          style: TextStyle(
                              color: CustomColors.background,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Merriweather'),
                        )),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

Future<dynamic> showSignUpSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 700.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: CustomColors.button),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        FontAwesomeIcons.lessThan,
                        size: 20.0,
                        color: CustomColors.background,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Need some help?',
                        style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Merriweather'),
                      )),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Getting started',
                style: TextStyle(
                    color: CustomColors.buttonText,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Merriweather'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Create account to continue!',
                style: TextStyle(
                    color: CustomColors.buttonText,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Merriweather'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: CustomColors.buttonText,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: CustomColors.buttonText,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: CustomColors.buttonText,
                      )),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 60.0,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: CustomColors.buttonText,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: CustomColors.background,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      prefixIcon: Icon(
                        FontAwesomeIcons.envelope,
                        color: CustomColors.buttonText,
                      )),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 60.0,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: CustomColors.buttonText,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: CustomColors.background,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      prefixIcon: Icon(
                        FontAwesomeIcons.user,
                        color: CustomColors.buttonText,
                      )),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 60.0,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: CustomColors.buttonText,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: CustomColors.background,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: CustomColors.buttonText, width: 1.0)),
                      prefixIcon: Icon(
                        FontAwesomeIcons.lock,
                        color: CustomColors.buttonText,
                      )),
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Container(
                width: 300.0,
                decoration: BoxDecoration(
                    color: CustomColors.background,
                    borderRadius: BorderRadius.circular(50.0),
                    border:
                        Border.all(width: 2.0, color: CustomColors.buttonText)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.background, elevation: 0.0),
                  onPressed: () {},
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: CustomColors.buttonText,
                        fontSize: 18.0,
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        color: CustomColors.buttonText,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Merriweather'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: CustomColors.background,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Merriweather'),
                      )),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
