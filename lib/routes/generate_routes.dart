import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:non_existing/business_logic.dart/home_page_bloc/home_page_bloc.dart';
import 'package:non_existing/presentations/home_page.dart';

class RouteGenerator {
  final HomePageBloc homePageBloc = HomePageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider<HomePageBloc>.value(
                  value: homePageBloc,
                  child: const HomePage(),
                )
              );
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ));
  });
}
