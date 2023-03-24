import 'package:flutter/material.dart';

import 'screen/view/homeScreen.dart';
import 'screen/view/login_screen.dart';
import 'screen/view/singnupScreen.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => LodinScreen(),
      'sing':(context) => SignupScreen(),
        'home':(context) =>HomeScreen(),
      },
    ),
  );
}
