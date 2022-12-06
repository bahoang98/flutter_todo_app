import 'package:flutter/material.dart';
import 'package:flutter_base_sample/screens/home/home.dart';

class Routes {
  Routes._();

  //static variables

  static const String home = '/home';

  static final routes = {
    home: (BuildContext context) => const HomeScreen(),
  };
}
